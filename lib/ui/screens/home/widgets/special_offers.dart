import 'package:flutter/material.dart';
import 'package:woodle/core/models/home_page/home_page_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/widgets/item_varient_box.dart';

class SpecialOffers extends StatelessWidget {
  final HomeCategoriesModel? data;
  const SpecialOffers({Key? key, this.data}) : super(key: key);

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
    if (data != null) {
      return StreamBuilder(
          initialData: service.initialValue(),
          stream: service.controller,
          builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text(data!.categoryName,
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemBuilder: (_, int index) {
                          return ItemVarientBox(
                            data: data!.itemVarients[index],
                            quantity: _getCartQuantity(
                                snap.data, data!.itemVarients[index].varientId),
                            onAdd: () =>
                                service.addItem(data!.itemVarients[index]),
                            onRemove: () =>
                                service.removeItem(data!.itemVarients[index]),
                          );
                        },
                        itemCount: data!.itemVarients.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(horizontal: 5)))
              ],
            );
          });
    }
    return Container();
  }
}
