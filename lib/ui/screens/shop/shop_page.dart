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
import 'package:woodle/ui/widgets/marquee.dart';

class ShopPage extends HookWidget {
  final int shopId;
  final int authorId;
  const ShopPage({Key? key, required this.shopId,required this.authorId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartService service = CartService();
    final searchController = useTextEditingController();

    useEffect(() {
      context.read<ShopBloc>().add(ShopEvent.fetchData(shopId,authorId));
    }, []);

    final showCancel = useState(false);
    final searchValue = useState<String>('');
    useEffect(() {
      searchController.addListener(() {
        searchValue.value = searchController.text;
        if (showCancel.value != searchController.text.isNotEmpty)
          showCancel.value = searchController.text.isNotEmpty;
      });
      return () => searchController.dispose();
    }, []);

    final selectedMenuId = useState(-1);

    return RefreshIndicator(
        child: Scaffold(
          body: BlocBuilder<ShopBloc, ShopState>(
              builder: (context, state) => state.when(
                  loading: () => LoadingView(),
                  loaded: (data) => _buildPage(
                      context,
                      data,
                      service,
                      searchController,
                      showCancel,
                      selectedMenuId,
                      searchValue),
                  failed: (exception) => FailedView(
                      exceptions: exception,
                      onRetry: () => context
                          .read<ShopBloc>()
                          .add(ShopEvent.fetchData(70,authorId))))),
        ),
        onRefresh: () async {
          context.read<ShopBloc>().add(ShopEvent.fetchData(shopId,authorId));
          return null;
        });
  }

  Widget _buildPage(
      BuildContext context,
      ShopModel data,
      CartService service,
      TextEditingController searchController,
      ValueNotifier<bool> showCancel,
      ValueNotifier<int> selectedMenuId,
      ValueNotifier<String> searchvalue) {
    print('lister////////');
    print(searchController.text);
    List<MenuModel> _filteredCategories = selectedMenuId.value != -1
        ? data.category
                ?.where((element) => element.id == selectedMenuId.value)
                .toList() ??
            []
        : data.category ?? [];
    List<Widget> _slivers = [];

    _slivers
      ..add(ShopSliverAppBar(
        imageUrl: data.imageUrl,
        title: data.shopName,
        showCancel: showCancel.value,
        controller: searchController,
      ))
      ..add(SliverList(
          delegate: SliverChildListDelegate([
        ShopHeader(
          shop: data,
          selectedMenuId: selectedMenuId.value,
          onMenuSelection: (id) => selectedMenuId.value = id,
        ),
        MarqueeWidget(text: data.message ?? ''),
      ])));

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
              delegate: SliverChildListDelegate([
                _buildItemList(service, category.items, searchvalue.value,
                    data.servicesNow ?? true)
              ]),
            )));
    });

    _slivers
      ..add(SliverList(
        delegate: SliverChildListDelegate([SizedBox(height: 100)]),
      ));

    return Stack(
      fit: StackFit.loose,
      children: [
        CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(), slivers: _slivers),
        Align(
          alignment: Alignment.bottomCenter,
          child: data.servicesNow != null && data.servicesNow!
              ? StreamBuilder(
                  stream: service.controller,
                  initialData: service.initialValue(),
                  builder:
                      (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
                    if (snap.hasData && snap.data!.length > 0) {
                      double _totalPrice = 0;
                      int _itemCount = 0;

                      snap.data?.forEach((item) {
                        _totalPrice += item.salePrice!;
                        _itemCount += 1;
                      });
                      return CartTile(
                        itemCount: _itemCount,
                        totalPrice: _totalPrice,
                      );
                    }
                    return SizedBox();
                  })
              : Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.orange,
                  width: double.infinity,
                  // alignment: Alignment.center,
                  child: Text(
                    'Service not available',
                    textAlign: TextAlign.center,
                  ),
                ),
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

  Widget _buildItemList(CartService service, List<ItemModel> data,
      String serachValue, bool isActive) {
    return StreamBuilder(
      stream: service.controller,
      initialData: service.initialValue(),
      builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (data[index]
                .name
                .toLowerCase()
                .contains(serachValue.toLowerCase())) {
              if (data[index].varients.length == 1) {
                return ItemVarientTile(
                    isInactive: !isActive,
                    onTap: !isActive
                        ? null
                        : () => Navigator.of(context).pushNamed('/item',
                                arguments: {
                                  'itemId': data[index].id,
                                  'itemName': data[index].name
                                }),
                    margin: EdgeInsets.zero,
                    item: data[index].varients[0],
                    onAdd: () =>
                        service.addItem(context, data[index].varients[0]),
                    onRemove: () => service.removeItem(data[index].varients[0]),
                    quantity: _getCartQuantity(
                        snap.data, data[index].varients[0].varientId));
              }
              return ItemVarientContainerTile(
                  isInactive: !isActive,
                  onTap: !isActive
                      ? null
                      : () => Navigator.of(context).pushNamed('/item',
                              arguments: {
                                'itemId': data[index].id,
                                'itemName': data[index].name
                              }),
                  item: data[index],
                  service: service,
                  cartItems: snap.data,
                  onAdd: (item) => service.addItem(context, item),
                  onRemove: (item) => service.removeItem(item));
            }
            return Container();
          },
          itemCount: data.length,
        );
      },
    );
  }
}
