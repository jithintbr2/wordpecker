import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/models/category/category_model.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/models/sub_category/sub_category_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/ui/screens/category_items/bloc/category_items_bloc.dart';
import 'package:woodle/ui/screens/category_items/category_items_build.dart';
import 'package:woodle/ui/widgets/cart_tile.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/item_box.dart';
import 'package:woodle/ui/widgets/item_varient_container_tile.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';
import 'package:woodle/ui/widgets/loading.dart';

import 'widgets/appbar.dart';

class CategoryItemsPage extends HookWidget {
  final List<CategoryModel> categories;
  final int categoryId;
  final String categoryName;
  const CategoryItemsPage(
      {required this.categoryId,
      required this.categoryName,
      required this.categories,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartService service = CartService();
    final searchController = useTextEditingController();

    final LocalStorage localStorage = LocalStorage();
    final isGridView = useState(localStorage.get('isGridView') != null
        ? localStorage.get('isGridView') as bool
        : false);

    useEffect(() {
      context
          .read<CategoryItemsBloc>()
          .add(CategoryItemsEvent.fetchData(categoryId));
    }, []);

    final showCancel = useState(false);
    useEffect(() {
      searchController.addListener(() {
        if (showCancel.value != searchController.text.isNotEmpty)
          showCancel.value = searchController.text.isNotEmpty;
      });
      return () => searchController.dispose();
    }, []);

    return Scaffold(
      appBar: CategoryItemsAppBar(
        showCancel: showCancel.value,
        controller: searchController,
        title: categoryName,
        isGridView: isGridView.value,
        onViewChange: () {
          localStorage.set('isGridView', !isGridView.value);
          isGridView.value = !isGridView.value;
        },
      ),
      body: RefreshIndicator(
          onRefresh: () async {
            context
                .read<CategoryItemsBloc>()
                .add(CategoryItemsEvent.fetchData(categoryId));
            return null;
          },
          child: _buildBloc(service, searchController, isGridView.value)),
    );
  }

  Widget _buildBloc(
    CartService service,
    TextEditingController searchController,
    bool isGridView,
  ) {
    return BlocBuilder<CategoryItemsBloc, CategoryItemsState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) {
              if (data.isNotEmpty)
                return CategoryItemsBuild(
                    data: data,
                    isGridView: isGridView,
                    search: searchController,
                    service: service);
              // return _buildPage(service, data, searchController, isGridView);
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

  Widget _buildSubCategoryItem(CategoryModel item) => Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Container(
                height: 100,
                width: 100,
                child: CachedNetworkImage(
                  imageUrl: item.imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (_, __) =>
                      Center(child: Image.asset(Assets.appIcon)),
                  errorWidget: (_, __, ___) => Center(child: Icon(Icons.error)),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: 100,
                  padding: EdgeInsets.all(1),
                  color: Colors.white70,
                  child: Text(
                    item.title,
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      );

  int _getCartQuantity(List<ItemVarientModel>? data, int id) {
    int quantity = 0;
    if (data != null)
      data.forEach((item) {
        if (item.varientId == id) quantity += 1;
      });

    return quantity;
  }

  // Widget _buildPage(CartService service, List<SubCategoryModel> data,
  //     TextEditingController search, bool isGridView) {
  //   List<ItemModel> filteredData = [];

  //   if (search.text.isEmpty)
  //     filteredData = data;
  //   else
  //     data.forEach((value) {
  //       if (value.name.contains(search.text)) filteredData.add(value);
  //     });

  //   if (isGridView)
  //     return Column(
  //       children: [
  //         Container(
  //             height: 100,
  //             child: ListView.builder(
  //               shrinkWrap: true,
  //               itemBuilder: (context, index) => InkWell(
  //                   onTap: () {},
  //                   child: _buildSubCategoryItem(categories[index])),
  //               itemCount: categories.length,
  //               scrollDirection: Axis.horizontal,
  //             )),
  //         Divider(),
  //         GridView.builder(
  //           shrinkWrap: true,
  //           physics: NeverScrollableScrollPhysics(),
  //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //               crossAxisCount: 3, childAspectRatio: 1),
  //           itemBuilder: (context, index) => ItemBox(data: filteredData[index]),
  //           itemCount: filteredData.length,
  //         )
  //       ],
  //     );

  //   return StreamBuilder(
  //     initialData: service.initialValue(),
  //     stream: service.controller,
  //     builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
  //       double _totalPrice = 0;
  //       int _itemCount = 0;

  //       snap.data?.forEach((item) {
  //         _totalPrice += item.salePrice!;
  //         _itemCount += 1;
  //       });

  //       return Column(
  //         children: [
  //           Expanded(
  //               child: ListView(
  //             shrinkWrap: true,
  //             children: [
  //               Container(
  //                   height: 100,
  //                   child: ListView.builder(
  //                     shrinkWrap: true,
  //                     itemBuilder: (context, index) => InkWell(
  //                         onTap: () {},
  //                         child: _buildSubCategoryItem(categories[index])),
  //                     itemCount: categories.length,
  //                     scrollDirection: Axis.horizontal,
  //                   )),
  //               Divider(),
  //               ListView.builder(
  //                 physics: NeverScrollableScrollPhysics(),
  //                 shrinkWrap: true,
  //                 itemBuilder: (context, index) {
  //                   if (filteredData[index].varients.length == 1) {
  //                     return ItemVarientTile(
  //                       item: filteredData[index].varients[0],
  //                       onAdd: () =>
  //                           service.addItem(filteredData[index].varients[0]),
  //                       onRemove: () =>
  //                           service.removeItem(filteredData[index].varients[0]),
  //                       quantity: _getCartQuantity(snap.data,
  //                           filteredData[index].varients[0].varientId),
  //                       onTap: () => Navigator.of(context).pushNamed('/item',
  //                           arguments: {
  //                             'itemId': data[index].id,
  //                             'itemName': data[index].name
  //                           }),
  //                     );
  //                   }
  //                   return ItemVarientContainerTile(
  //                     item: filteredData[index],
  //                     service: service,
  //                     cartItems: snap.data,
  //                     onAdd: (item) => service.addItem(item),
  //                     onRemove: (item) => service.removeItem(item),
  //                     onTap: () => Navigator.of(context).pushNamed('/item',
  //                         arguments: {
  //                           'itemId': data[index].id,
  //                           'itemName': data[index].name
  //                         }),
  //                   );
  //                 },
  //                 itemCount: filteredData.length,
  //               )
  //             ],
  //           )),
  //           snap.hasData && snap.data!.length > 0
  //               ? CartTile(
  //                   itemCount: _itemCount,
  //                   totalPrice: _totalPrice,
  //                 )
  //               : SizedBox()
  //         ],
  //       );
  //     },
  //   );
  // }
}
