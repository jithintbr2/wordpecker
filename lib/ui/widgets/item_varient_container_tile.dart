import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';

class ItemVarientContainerTile extends StatelessWidget {
  final ItemModel item;
  final List<ItemVarientModel>? cartItems;
  final void Function(ItemVarientModel) onAdd;
  final void Function(ItemVarientModel) onRemove;

  const ItemVarientContainerTile({
    Key? key,
    required this.item,
    required this.cartItems,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);

  int _getCartQuantity(List<ItemVarientModel>? data, int id) {
    int quantity = 0;
    if (data != null)
      data.forEach((item) {
        if (item.varientId == id) quantity += 1;
      });

    return quantity;
  }

  void _onButtonPressed(
      {required BuildContext context,
      required List<ItemVarientModel> data,
      required List<ItemVarientModel> selectedItems}) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(10),
                topRight: const Radius.circular(10),
              ),
            ),
            height: 180,
            child: ListView.builder(
                itemBuilder: (context, index) => ItemVarientTile(
                    elevation: 0,
                    item: data[index],
                    onAdd: () => onAdd(data[index]),
                    onRemove: () => onRemove(data[index]),
                    quantity: _getCartQuantity(
                        selectedItems, data[index].varientId))),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    List<ItemVarientModel> selectedVarientItems = [];

    cartItems?.forEach((cartItem) {
      item.varients.forEach((varient) {
        if (cartItem.varientId == varient.varientId)
          selectedVarientItems.add(varient);
      });
    });

    List<ItemVarientModel> uniqueSelectedVarientItems =
        selectedVarientItems.toSet().toList();

    return Card(
        child: Column(
      children: [
        ListTile(
            leading: Container(
                height: 64,
                width: 64,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: CachedNetworkImage(
                  imageUrl: item.image,
                  fit: BoxFit.cover,
                  placeholder: (_, __) =>
                      Center(child: Image.asset(Assets.appIcon)),
                  errorWidget: (_, __, ___) => Center(child: Icon(Icons.error)),
                )),
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Text(
                item.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 16),
              ),
            ),
            trailing: _buildAddButton(
                context,
                () => _onButtonPressed(
                    context: context,
                    data: item.varients,
                    selectedItems: selectedVarientItems))),
        uniqueSelectedVarientItems.length > 0 ? Divider() : SizedBox(),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: uniqueSelectedVarientItems.length,
            itemBuilder: (context, index) => ItemVarientTile(
                elevation: 0,
                item: uniqueSelectedVarientItems[index],
                onAdd: () => onAdd(uniqueSelectedVarientItems[index]),
                onRemove: () => onRemove(uniqueSelectedVarientItems[index]),
                quantity: _getCartQuantity(selectedVarientItems,
                    uniqueSelectedVarientItems[index].varientId)))
      ],
    ));
  }

  Widget _buildAddButton(BuildContext context, void Function()? onPressed) {
    return SizedBox(
      height: 32,
      width: 100,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Theme.of(context).primaryColor),
          backgroundColor: Config.addButtonInvert
              ? Theme.of(context).primaryColor
              : Theme.of(context).canvasColor,
          padding: EdgeInsets.all(0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        // icon: Icon(Icons.add, size: 16),
        onPressed: onPressed,
        child: Text(
          "Add",
          style: TextStyle(
            fontSize: 11,
            color: Config.addButtonInvert
                ? Theme.of(context).canvasColor
                : Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
