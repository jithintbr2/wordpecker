import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/screens/category_items/bloc/category_items_bloc.dart';
import 'package:woodle/ui/widgets/cart_tile.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/item_varient_container_tile.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';
import 'package:woodle/ui/widgets/loading.dart';

import 'widgets/appbar.dart';

class CategoryItemsPage extends HookWidget {
  final int categoryId;
  final String categoryName;
  const CategoryItemsPage(
      {required this.categoryId, required this.categoryName, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartService service = CartService();
    final searchController = useTextEditingController();

    useEffect(() {
      context
          .read<CategoryItemsBloc>()
          .add(CategoryItemsEvent.fetchData(categoryId));
    }, []);

    return Scaffold(
      appBar: CategoryItemsAppBar(
        controller: searchController,
        title: categoryName,
      ),
      body: RefreshIndicator(
          onRefresh: () async {
            context
                .read<CategoryItemsBloc>()
                .add(CategoryItemsEvent.fetchData(categoryId));
            return null;
          },
          child: _buildBloc(service)),
    );
  }

  Widget _buildBloc(CartService service) {
    return BlocBuilder<CategoryItemsBloc, CategoryItemsState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) {
              if (data.isNotEmpty) return _buildPage(service, data);
              return EmptyView(
                  icon: Icons.do_not_disturb,
                  title: "No items in this category");
            },
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () {
                  context
                      .read<CategoryItemsBloc>()
                      .add(CategoryItemsEvent.fetchData(categoryId));
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

  Widget _buildPage(CartService service, List<ItemModel> data) {
    return StreamBuilder(
      initialData: service.initialValue(),
      stream: service.controller,
      builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
        return Column(
          children: [
            Expanded(
                child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (data[index].varients.length == 1) {
                  return ItemVarientTile(
                      item: data[index].varients[0],
                      onAdd: () => service.addItem(data[index].varients[0]),
                      onRemove: () =>
                          service.removeItem(data[index].varients[0]),
                      quantity: _getCartQuantity(
                          snap.data, data[index].varients[0].varientId));
                }
                return ItemVarientContainerTile(
                    item: data[index],
                    cartItems: snap.data,
                    onAdd: (item) => service.addItem(item),
                    onRemove: (item) => service.removeItem(item));
              },
              itemCount: data.length,
            )),
            CartTile(
                itemCount: snap.hasData ? snap.data!.length : 0,
                onCheckout: () {},
                totalPrice: 300)
          ],
        );
      },
    );
  }
}
