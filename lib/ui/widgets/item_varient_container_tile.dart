import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';

class ItemVarientContainerTile extends StatelessWidget {
  final ItemModel item;
  final List<ItemVarientModel>? cartItems;
  final void Function(ItemVarientModel) onAdd;
  final void Function(ItemVarientModel) onRemove;
  final void Function()? onTap;
  final CartService service;

  const ItemVarientContainerTile({
    Key? key,
    required this.item,
    required this.cartItems,
    required this.onAdd,
    required this.onRemove,
    required this.service,
    this.onTap,
  }) : super(key: key);

  int _getCartQuantity(List<ItemVarientModel>? data, int id) {
    int quantity = 0;
    if (data != null)
      data.forEach((item) {
        if (item.varientId == id) quantity += 1;
      });

    return quantity;
  }

  void _onButtonPressed({
    required BuildContext context,
    required List<ItemVarientModel> data,
    required List<ItemVarientModel> selectedItems,
  }) {
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
              child: StreamBuilder(
                  initialData: service.initialValue(),
                  stream: service.controller,
                  builder:
                      (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
                    List<String> varientTypes = data
                        .map((varient) => varient.varientType)
                        .toSet()
                        .toList();

                    return ListView(
                      children: varientTypes
                          .map((type) => Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 20),
                                    child: Text(
                                      type,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.3),
                                  ),
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      if (data[index].varientType == type)
                                        return ItemVarientTile(
                                            elevation: 0,
                                            item: data[index],
                                            onAdd: () => onAdd(data[index]),
                                            onRemove: () =>
                                                onRemove(data[index]),
                                            quantity: _getCartQuantity(
                                                snap.data,
                                                data[index].varientId));
                                      return SizedBox();
                                    },
                                    itemCount: data.length,
                                  )
                                ],
                              ))
                          .toList(),
                    );
                  }));
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
              item.name,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
            ),
          ),
          trailing: _buildAddButton(
              context,
              () => _onButtonPressed(
                  context: context,
                  data: item.varients,
                  selectedItems: selectedVarientItems)),
          subtitle: Text(''),
        ),
        ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: uniqueSelectedVarientItems.length,
            itemBuilder: (context, index) => ItemVarientTile(
                margin: EdgeInsets.zero,
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                elevation: 0,
                item: uniqueSelectedVarientItems[index],
                onAdd: () => onAdd(uniqueSelectedVarientItems[index]),
                onRemove: () => onRemove(uniqueSelectedVarientItems[index]),
                quantity: _getCartQuantity(selectedVarientItems,
                    uniqueSelectedVarientItems[index].varientId))),
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
