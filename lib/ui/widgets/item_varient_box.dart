import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/core/settings/config.dart';

class ItemVarientBox extends StatelessWidget {
  final ItemVarientModel data;
  final int quantity;
  final void Function()? onAdd;
  final void Function()? onRemove;
  final void Function()? onTap;
  const ItemVarientBox({
    Key? key,
    required this.data,
    required this.onAdd,
    required this.onRemove,
    required this.quantity,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 150,
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CachedNetworkImage(
                  height: 90,
                  imageUrl: data.image,
                  fit: BoxFit.cover,
                  placeholder: (_, __) =>
                      Center(child: Image.asset(Assets.appIcon)),
                  errorWidget: (_, __, ___) => Center(
                      child: Icon(Icons.error,
                          color: Theme.of(context).accentColor))),
              SizedBox(height: 4),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(data.itemName,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(fontSize: 12),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis)),
              SizedBox(height: 4),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("item.shopName",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 10))),
              SizedBox(height: 4),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("₹${data.salePrice}",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(color: Colors.orange[700])),
                        data.mrp == data.salePrice
                            ? Container()
                            : Text("₹${data.mrp}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                      decoration: TextDecoration.lineThrough,
                                      decorationThickness: 2,
                                      color: Colors.red,
                                      fontSize: 12,
                                    ))
                      ])),
              SizedBox(height: 5),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  PurchaseControlButton(
                      itemQuantity: quantity, onAdd: onAdd, onRemove: onRemove)
                ],
              )
            ],
          ),
        ),
      ),
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
