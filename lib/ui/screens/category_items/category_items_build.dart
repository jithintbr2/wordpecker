import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/models/sub_category/sub_category_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/ui/widgets/cart_tile.dart';
import 'package:woodle/ui/widgets/item_box.dart';
import 'package:woodle/ui/widgets/item_varient_container_tile.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';

class CategoryItemsBuild extends HookWidget {
  final CartService service;
  final List<SubCategoryModel> data;
  final TextEditingController search;
  final bool isGridView;
  const CategoryItemsBuild({
    Key? key,
    required this.data,
    required this.isGridView,
    required this.search,
    required this.service,
  }) : super(key: key);

  Widget _buildSubCategoryItem(
          BuildContext context, SubCategoryModel item, bool isSelected) =>
      Card(
        elevation: isSelected ? 5 : 1,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          height: 100,
          width: 100,
          decoration: isSelected
              ? BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2))
              : null,
          child: Stack(children: [
            SizedBox(
              child: CachedNetworkImage(
                height: 100,
                width: 100,
                // imageUrl: item.items.length > 0 ? item.items[0].image : '',
                imageUrl: item.imageUrl ?? '',
                fit: BoxFit.cover,
                placeholder: (_, __) =>
                    Center(child: Image.asset(Assets.appIcon)),
                errorWidget: (_, __, ___) => Center(child: Icon(Icons.error)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: 100,
                  padding: EdgeInsets.all(1),
                  color: Colors.white70,
                  child: Text(
                    item.name,
                    textAlign: TextAlign.center,
                  )),
            )
          ]),
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

  @override
  Widget build(BuildContext context) {
    final _selectedSubCategory = useState(0);
    List<ItemModel> filteredData = [];
    if (search.text.isEmpty)
      filteredData = data[_selectedSubCategory.value].items;
    else
      data[_selectedSubCategory.value].items.forEach((value) {
        if (value.name.contains(search.text)) filteredData.add(value);
      });

    print('...1212...');
    print(data.length);

    if (isGridView)
      return ListView(
        children: [
          data.length == 1
              ? SizedBox()
              : Container(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => InkWell(
                        onTap: () => _selectedSubCategory.value = index,
                        child: _buildSubCategoryItem(context, data[index],
                            _selectedSubCategory.value == index)),
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal,
                  )),
          Divider(),
          filteredData.length > 0
              ? GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 1),
                  itemBuilder: (context, index) =>
                      ItemBox(data: filteredData[index]),
                  itemCount: filteredData.length,
                )
              : Container(
                  height: 300,
                  child: Text('No items'),
                  alignment: Alignment.center,
                )
        ],
      );

    return StreamBuilder(
      initialData: service.initialValue(),
      stream: service.controller,
      builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
        double _totalPrice = 0;
        int _itemCount = 0;

        snap.data?.forEach((item) {
          _totalPrice += item.salePrice!;
          _itemCount += 1;
        });

        return Column(
          children: [
            Expanded(
                child: ListView(
              shrinkWrap: true,
              children: [
                data.length == 1
                    ? SizedBox()
                    : Container(
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => InkWell(
                              onTap: () => _selectedSubCategory.value = index,
                              child: _buildSubCategoryItem(context, data[index],
                                  _selectedSubCategory.value == index)),
                          itemCount: data.length,
                          scrollDirection: Axis.horizontal,
                        )),
                Divider(),
                filteredData.length > 0
                    ? ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          if (filteredData[index].varients.length == 1) {
                            return ItemVarientTile(
                              item: filteredData[index].varients[0],
                              onAdd: () => service.addItem(
                                  context, filteredData[index].varients[0]),
                              onRemove: () => service
                                  .removeItem(filteredData[index].varients[0]),
                              quantity: _getCartQuantity(snap.data,
                                  filteredData[index].varients[0].varientId),
                              onTap: () => Navigator.of(context)
                                  .pushNamed('/item', arguments: {
                                'itemId': filteredData[index].id,
                                'itemName': filteredData[index].name
                              }),
                            );
                          }
                          return ItemVarientContainerTile(
                            item: filteredData[index],
                            service: service,
                            cartItems: snap.data,
                            onAdd: (item) => service.addItem(context, item),
                            onRemove: (item) => service.removeItem(item),
                            onTap: () => Navigator.of(context)
                                .pushNamed('/item', arguments: {
                              'itemId': filteredData[index].id,
                              'itemName': filteredData[index].name
                            }),
                          );
                        },
                        itemCount: filteredData.length,
                      )
                    : Container(
                        height: 300,
                        child: Text('No items'),
                        alignment: Alignment.center,
                      )
              ],
            )),
            snap.hasData && snap.data!.length > 0
                ? CartTile(
                    itemCount: _itemCount,
                    totalPrice: _totalPrice,
                  )
                : SizedBox()
          ],
        );
      },
    );
  }
}
