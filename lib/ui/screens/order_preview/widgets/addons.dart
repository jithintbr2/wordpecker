import 'package:flutter/material.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/widgets/item_varient_box.dart';

class Addons extends StatelessWidget {
  final List<ItemVarientModel> data;
  const Addons({Key? key, required this.data}) : super(key: key);

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
    final CartService service = CartService();
    return SizedBox(
      height: 200,
      child: StreamBuilder(
          initialData: service.initialValue(),
          stream: service.controller,
          builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
            return ListView.builder(
                itemBuilder: (_, int index) {
                  return ItemVarientBox(
                    data: data[index],
                    quantity:
                        _getCartQuantity(snap.data, data[index].varientId),
                    onAdd: () => service.addItem(context, data[index]),
                    onRemove: () => service.removeItem(data[index]),
                  );
                },
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 10));
          }),
    );
  }
}
