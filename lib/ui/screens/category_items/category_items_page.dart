import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/screens/category_items/bloc/category_items_bloc.dart';
import 'package:woodle/ui/widgets/item_tile.dart';
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
    late CartService service;
    final searchController = useTextEditingController();

    useEffect(() {
      service = CartService();
      service.init();
      context
          .read<CategoryItemsBloc>()
          .add(CategoryItemsEvent.fetchData(categoryId));
      return () => service.dispose();
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
    Widget _viewer = SizedBox();
    return BlocBuilder<CategoryItemsBloc, CategoryItemsState>(
      builder: (context, state) {
        state.when(loading: () {
          _viewer = LoadingView();
        }, loaded: (data) {
          _viewer = _buildPage(service, data);
        }, failed: () {
          _viewer = Container();
        });
        return _viewer;
      },
    );
  }

  Widget _buildPage(CartService service, List<ItemModel> data) {
    return StreamBuilder(
      stream: service.controller,
      builder: (context, AsyncSnapshot<List<ItemModel>> snap) {
        return ListView.builder(
          itemBuilder: (context, index) {
            int quantity = 0;
            if (snap.data != null)
              snap.data!.forEach((item) {
                if (item.id == data[index].id) quantity += 1;
              });
            return ItemTile(
              item: data[index],
              onAdd: () => service.addItem(data[index]),
              onRemove: () => service.removeItem(data[index]),
              quantity: quantity,
            );
          },
          itemCount: data.length,
        );
      },
    );
  }
}
