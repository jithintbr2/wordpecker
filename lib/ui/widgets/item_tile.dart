import 'package:cached_network_image/cached_network_image.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemTile extends HookWidget {
  final ItemModel item;
  final int quantity;
  final void Function()? onAdd;
  final void Function()? onRemove;
  const ItemTile({
    required this.item,
    required this.onAdd,
    required this.onRemove,
    required this.quantity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
            height: 64,
            width: 64,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
            onAdd: onAdd, onRemove: onRemove, itemQuantity: quantity));
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
          ? _buildAddButton()
          : _buildItemCountControllerButton(context, itemQuantity),
    );
  }

  Widget _buildAddButton() {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      icon: Icon(Icons.add, size: 16),
      onPressed: onAdd,
      label: Text(
        "Add",
        style: TextStyle(fontSize: 11, color: Colors.green[900]),
      ),
    );
  }

  Widget _buildItemCountControllerButton(BuildContext context, int quantity) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Theme.of(context).buttonColor)),
      child: Row(
        children: [
          SizedBox(
            width: 30,
            child: IconButton(
              onPressed: onRemove,
              icon: Icon(Icons.remove),
              iconSize: 14,
            ),
          ),
          Expanded(
              child: Container(
                  color: Theme.of(context).buttonColor,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(quantity.toString(),
                      style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).canvasColor)))),
          SizedBox(
            width: 30,
            child: IconButton(
              onPressed: onAdd,
              icon: Icon(Icons.add),
              iconSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
