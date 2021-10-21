import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/home_search/home_search_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/ui/screens/home_search/bloc/home_search_bloc.dart';
import 'package:woodle/ui/screens/home_search/widgets/appbar.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/item_box.dart';
import 'package:woodle/ui/widgets/item_varient_container_tile.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';
import 'package:woodle/ui/widgets/loading.dart';
import 'package:woodle/ui/widgets/shop_tile.dart';

class HomeSearchPage extends HookWidget {
  final LocalStorage localStorage;
  final CartService service;
  const HomeSearchPage(
      {Key? key, required this.localStorage, required this.service})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    final showCancel = useState(false);

    final LocalStorage localStorage = LocalStorage();
    final isGridView = useState(localStorage.get('isGridView') != null
        ? localStorage.get('isGridView') as bool
        : false);

    AddressModel? _getAddress() {
      if (localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(localStorage.get('currentAddress') as String);
        return AddressModel.fromJson(currentAddressRaw);
      }
      return null;
    }

    AddressModel? address = _getAddress();

    useEffect(() {
      searchController.addListener(() {
        if (showCancel.value != searchController.text.isNotEmpty)
          showCancel.value = searchController.text.isNotEmpty;

        if (searchController.text.isNotEmpty &&
            searchController.text.length > 2)
          context.read<HomeSearchBloc>().add(HomeSearchEvent.search(
              searchController.text, address!.franchiseId));
      });
      return () => searchController.dispose();
    }, []);

    return Scaffold(
      appBar: HomeSearchAppBar(
        title: 'Search',
        controller: searchController,
        showCancel: showCancel.value,
        isGridView: isGridView.value,
        onViewChange: () {
          localStorage.set('isGridView', !isGridView.value);
          isGridView.value = !isGridView.value;
        },
      ),
      body: _buildBloc(isGridView.value),
    );
  }

  Widget _buildBloc(bool isGridView) {
    return BlocBuilder<HomeSearchBloc, HomeSearchState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(data, isGridView),
            failed: (error) => FailedView(
                exceptions: error,
                onRetry: () {
                  context.read<HomeSearchBloc>().add(HomeSearchEvent.reset());
                }));
      },
    );
  }

  int _getCartQuantity(List<ItemVarientModel>? data, int id) {
    int quantity = 0;
    if (data != null)
      data.forEach((item) {
        if (item.varientId == id) quantity += 1;
      });

    return quantity;
  }

  Widget _buildPage(HomeSearchModel data, bool isGridView) {
    if (data.items.isNotEmpty || data.shops.isNotEmpty)
      return ListView(
        children: [
          data.items.isNotEmpty
              ? Column(
                  children: [
                    // Text('Items'),
                    isGridView
                        ? GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3, childAspectRatio: 1),
                            itemBuilder: (context, index) =>
                                ItemBox(data: data.items[index]),
                            itemCount: data.items.length,
                          )
                        : StreamBuilder(
                            stream: service.controller,
                            initialData: service.initialValue(),
                            builder: (context,
                                AsyncSnapshot<List<ItemVarientModel>> snap) {
                              return ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  if (data.items[index].varients.length == 1) {
                                    return ItemVarientTile(
                                        onTap: () => Navigator.of(context)
                                                .pushNamed('/item', arguments: {
                                              'itemId': data.items[index].id,
                                              'itemName': data.items[index].name
                                            }),
                                        item: data.items[index].varients[0],
                                        onAdd: () => service.addItem(context,
                                            data.items[index].varients[0]),
                                        onRemove: () => service.removeItem(
                                            data.items[index].varients[0]),
                                        quantity: _getCartQuantity(
                                            snap.data,
                                            data.items[index].varients[0]
                                                .varientId));
                                  }
                                  return ItemVarientContainerTile(
                                      onTap: () => Navigator.of(context)
                                              .pushNamed('/item', arguments: {
                                            'itemId': data.items[index].id,
                                            'itemName': data.items[index].name
                                          }),
                                      item: data.items[index],
                                      service: service,
                                      cartItems: snap.data,
                                      onAdd: (item) =>
                                          service.addItem(context, item),
                                      onRemove: (item) =>
                                          service.removeItem(item));
                                },
                                itemCount: data.items.length,
                              );
                            })
                  ],
                )
              : Container(),
          data.shops.isNotEmpty
              ? Column(
                  children: [
                    Text('Shops'),
                    ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          ShopTile(shop: data.shops[index]),
                      itemCount: data.shops.length,
                    )
                  ],
                )
              : Container()
        ],
      );
    return EmptyView(icon: Icons.search_off, title: 'No results');
  }
}
