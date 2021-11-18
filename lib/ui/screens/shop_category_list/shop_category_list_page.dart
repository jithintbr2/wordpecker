import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/custom_page/custom_page_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/shop_category_list/bloc/shop_category_list_bloc.dart';
import 'package:woodle/ui/widgets/carousel.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';
import 'package:woodle/ui/widgets/marquee.dart';
import 'package:woodle/ui/widgets/shop_tile.dart';

class ShopCategoryListPage extends HookWidget {
  final int categoryId;
  final String categoryName;
  final LocalStorage localStorage;
  const ShopCategoryListPage({
    Key? key,
    required this.categoryId,
    required this.categoryName,
    required this.localStorage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      if (Config.locationId != -1 || address != null)
        context.read<ShopCategoryListBloc>().add(
            ShopCategoryListEvent.fetchData(
                address != null ? address.franchiseId : Config.locationId,
                categoryId));
    }, []);

    final _focusNode = FocusNode();
    final searchController = useTextEditingController();
    final showCancel = useState(false);
    useEffect(() {
      searchController.addListener(() {
        if (showCancel.value != searchController.text.isNotEmpty)
          showCancel.value = searchController.text.isNotEmpty;
      });
      return () => searchController.dispose();
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        bottom: PreferredSize(
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: TextField(
                focusNode: _focusNode,
                controller: searchController,
                decoration: InputDecoration(
                    isDense: true,
                    hintText: "Search in $categoryName",
                    filled: true,
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.grid_view, color: Colors.grey),
                    suffixIcon: showCancel.value
                        ? IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () {
                              _focusNode.unfocus();
                              searchController.clear();
                            },
                          )
                        : Icon(Icons.search))),
          ),
          preferredSize: Size.fromHeight(55),
        ),
      ),
      body: RefreshIndicator(
          onRefresh: () async {
            context.read<ShopCategoryListBloc>().add(
                ShopCategoryListEvent.fetchData(
                    address != null ? address.franchiseId : Config.locationId,
                    categoryId));
            return null;
          },
          child: _buildBloc(
              address != null ? address.franchiseId : Config.locationId,
              searchController)),
    );
  }

  Widget _buildBloc(int franchiseId, TextEditingController search) {
    return BlocBuilder<ShopCategoryListBloc, ShopCategoryListState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(context, data, search),
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () => context.read<ShopCategoryListBloc>().add(
                    ShopCategoryListEvent.fetchData(franchiseId, categoryId))));
      },
    );
  }

  // Widget _buildPage(List<ShopModel> data, TextEditingController search) {
  //   List<ShopModel> filteredData = [];
  //   if (search.text.isEmpty)
  //     filteredData = data;
  //   else
  //     data.forEach((value) {
  //       print(value.shopName);
  //       print(search.text);
  //       if (value.shopName.toLowerCase().contains(search.text.toLowerCase()))
  //         filteredData.add(value);
  //     });

  //   if (data.isNotEmpty)
  //     return ListView.builder(
  //       itemBuilder: (context, index) => ShopTile(shop: filteredData[index]),
  //       itemCount: filteredData.length,
  //     );
  //   return EmptyView(icon: Icons.shopping_basket, title: 'No Shops Available');
  // }

  Widget _buildPage(BuildContext context, CustomPageModel data,
      TextEditingController search) {
    List<ShopModel> filteredData = [];
    if (search.text.isEmpty)
      filteredData = data.shops ?? [];
    else
      data.shops?.forEach((value) {
        if (value.shopName.toLowerCase().contains(search.text.toLowerCase()))
          filteredData.add(value);
      });

    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 10),
      children: [
        Carousel(items: data.carouselx1 ?? [], viewportFraction: 1),
        SizedBox(height: 10),
        MarqueeWidget(text: data.message ?? ''),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Carousel(items: data.carouselx2 ?? [], viewportFraction: 1)),
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Carousel(items: data.carouselx3 ?? [], viewportFraction: 1)),
        SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => ShopTile(shop: filteredData[index]),
          itemCount: filteredData.length,
          physics: NeverScrollableScrollPhysics(),
        ),
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Carousel(items: data.carouselx4 ?? [], viewportFraction: 1)),
        SizedBox(height: 60)
      ],
    );
  }
}
