import 'package:cached_network_image/cached_network_image.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/settings/config.dart';

class ItemVarientTile extends HookWidget {
  final ItemVarientModel item;
  final int quantity;
  final void Function()? onAdd;
  final void Function()? onRemove;
  final void Function()? onTap;
  final bool? showParent;
  final double? elevation;
  const ItemVarientTile({
    required this.item,
    required this.onAdd,
    required this.onRemove,
    required this.quantity,
    this.onTap,
    this.showParent = false,
    this.elevation = 1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: ListTile(
          onTap: onTap,
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
              showParent!
                  ? '${item.itemName} (${item.varientName})'
                  : item.varientName,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
            ),
          ),
          subtitle: item.salePrice == item.mrp
              ? Text("₹${item.salePrice}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 14))
              : Row(children: [
                  Text("₹${item.salePrice}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14)),
                  SizedBox(width: 10),
                  Text("₹${item.mrp}",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            decoration: TextDecoration.lineThrough,
                            decorationThickness: 2,
                            color: Colors.red,
                            fontSize: 12,
                          ))
                ]),
          trailing: PurchaseControlButton(
              onAdd: onAdd, onRemove: onRemove, itemQuantity: quantity)),
    );
  }
}

class PurchaseControlButton extends StatelessWidget {
  final int itemQuantity;
  final void Function()? onAdd;
  final void Function()? onRemove;
  const PurchaseControlButton(
      {required this.itemQuantity,
      required this.onAdd,
      required this.onRemove,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 32,
      width: 100,
      duration: Duration(milliseconds: 300),
      child: itemQuantity == 0
          ? _buildAddButton(context)
          : _buildItemCountControllerButton(context, itemQuantity),
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Theme.of(context).primaryColor),
        backgroundColor: Config.addButtonInvert
            ? Theme.of(context).primaryColor
            : Theme.of(context).canvasColor,
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      // icon: Icon(Icons.add, size: 16),
      onPressed: onAdd,
      child: Text("Add",
          style: TextStyle(
            fontSize: 11,
            color: Config.addButtonInvert
                ? Theme.of(context).canvasColor
                : Theme.of(context).primaryColor,
          )),
    );
  }

  Widget _buildItemCountControllerButton(BuildContext context, int quantity) {
    return Container(
      decoration: BoxDecoration(
          color: Config.addButtonInvert
              ? Theme.of(context).primaryColor
              : Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Theme.of(context).primaryColor)),
      child: Row(
        children: [
          SizedBox(
            width: 30,
            child: IconButton(
              onPressed: onRemove,
              icon: Icon(
                Icons.remove,
                color: Config.addButtonInvert
                    ? Theme.of(context).canvasColor
                    : Theme.of(context).primaryColor,
              ),
              iconSize: 14,
            ),
          ),
          Expanded(
              child: Container(
                  color: Config.addButtonInvert
                      ? Theme.of(context).canvasColor
                      : Theme.of(context).primaryColor,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(quantity.toString(),
                      style: TextStyle(
                          fontSize: 12,
                          color: Config.addButtonInvert
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).canvasColor)))),
          SizedBox(
            width: 30,
            child: IconButton(
              onPressed: onAdd,
              icon: Icon(
                Icons.add,
                color: Config.addButtonInvert
                    ? Theme.of(context).canvasColor
                    : Theme.of(context).primaryColor,
              ),
              iconSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
