import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/models/menu/menu_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/screens/shop/bloc/shop_bloc.dart';
import 'package:woodle/ui/screens/shop/widgets/app_bar.dart';
import 'package:woodle/ui/screens/shop/widgets/shop_header.dart';
import 'package:woodle/ui/widgets/cart_tile.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/item_varient_container_tile.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';
import 'package:woodle/ui/widgets/loading.dart';

class ShopPage extends HookWidget {
  final int shopId;
  const ShopPage({Key? key, required this.shopId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartService service = CartService();
    useEffect(() {
      context.read<ShopBloc>().add(ShopEvent.fetchData(shopId));
    }, []);
    return Scaffold(
      body: BlocBuilder<ShopBloc, ShopState>(
          builder: (context, state) => state.when(
              loading: () => LoadingView(),
              loaded: (data) => _buildPage(context, data, service),
              failed: (exception) => FailedView(
                  exceptions: exception,
                  onRetry: () =>
                      context.read<ShopBloc>().add(ShopEvent.fetchData(70))))),
    );
  }

  Widget _buildPage(BuildContext context, ShopModel data, CartService service) {
    List<MenuModel> _filteredCategories = data.category ?? [];
    List<Widget> _slivers = [];

    _slivers
      ..add(ShopSliverAppBar(imageUrl: data.imageUrl))
      ..add(SliverList(
          delegate: SliverChildListDelegate([ShopHeader(shop: data)])));

    _filteredCategories.forEach((category) {
      if (category.items.isNotEmpty)
        _slivers.add(SliverStickyHeader(
            header: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              child: Text(
                category.title,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                  [_buildItemList(service, category.items)]),
            )));
    });

    _filteredCategories.forEach((category) {
      if (category.items.isNotEmpty)
        _slivers.add(SliverStickyHeader(
            header: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              child: Text(
                category.title,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                  [_buildItemList(service, category.items)]),
            )));
    });

    return Stack(
      fit: StackFit.loose,
      children: [
        CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(), slivers: _slivers),
        Align(
          alignment: Alignment.bottomCenter,
          child: StreamBuilder(
              stream: service.controller,
              initialData: service.initialValue(),
              builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
                if (snap.hasData && snap.data!.length > 0)
                  return CartTile(
                      itemCount: snap.data!.length,
                      onCheckout: () {},
                      totalPrice: 100);
                return SizedBox();
              }),
        )
      ],
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

  Widget _buildItemList(CartService service, List<ItemModel> data) {
    return StreamBuilder(
      stream: service.controller,
      initialData: service.initialValue(),
      builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
        return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (data[index].varients.length == 1) {
              return ItemVarientTile(
                  item: data[index].varients[0],
                  onAdd: () => service.addItem(data[index].varients[0]),
                  onRemove: () => service.removeItem(data[index].varients[0]),
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
        );
      },
    );
  }
}
