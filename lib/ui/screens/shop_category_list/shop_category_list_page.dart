import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/ui/screens/shop_category_list/bloc/shop_category_list_bloc.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/loading.dart';
import 'package:woodle/ui/widgets/shop_tile.dart';

class ShopCategoryListPage extends HookWidget {
  final int categoryId;
  final String categoryName;
  const ShopCategoryListPage(
      {Key? key, required this.categoryId, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context
          .read<ShopCategoryListBloc>()
          .add(ShopCategoryListEvent.fetchData(categoryId));
    }, []);
    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),
      body: RefreshIndicator(
          onRefresh: () async {
            context
                .read<ShopCategoryListBloc>()
                .add(ShopCategoryListEvent.fetchData(categoryId));
            return null;
          },
          child: _buildBloc()),
    );
  }

  Widget _buildBloc() {
    Widget _viewer = SizedBox();
    return BlocBuilder<ShopCategoryListBloc, ShopCategoryListState>(
      builder: (context, state) {
        state.when(loading: () {
          _viewer = LoadingView();
        }, loaded: (data) {
          if (data.isNotEmpty)
            _viewer = _buildPage(data);
          else
            _viewer = EmptyView(
                icon: Icons.shopping_basket, title: 'No Restaurants Available');
        });
        return _viewer;
      },
    );
  }

  Widget _buildPage(List<ShopModel> data) {
    return ListView.builder(
      itemBuilder: (context, index) => ShopTile(shop: data[index]),
      itemCount: data.length,
    );
  }
}
