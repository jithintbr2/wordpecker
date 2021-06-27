import 'package:flutter/material.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/screens/order_preview/widgets/price_indicator.dart';
import 'package:woodle/ui/widgets/item_tile.dart';

class CartPrice extends StatelessWidget {
  final CartService service;
  const CartPrice({required this.service, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: service.controller,
        builder: (context, AsyncSnapshot<List<ItemModel>> snap) {
          if (snap.data != null && snap.data!.isNotEmpty) {
            List<ItemModel> sortedData = snap.data!.toSet().toList();
            double totalPrice = 0;

            snap.data!.forEach((item) => totalPrice += item.salePrice!);

            return Card(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      int quantity = 0;
                      snap.data!.forEach((item) {
                        if (item.id == sortedData[index].id) quantity += 1;
                      });
                      return ItemTile(
                          item: sortedData[index],
                          onAdd: () => service.addItem(sortedData[index]),
                          onRemove: () => service.removeItem(sortedData[index]),
                          quantity: quantity);
                    },
                    itemCount: sortedData.length,
                  ),
                  Divider(),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: PriceIndicator(
                          price: totalPrice, title: 'Order Total'))
                ],
              ),
            );
          }
          return SizedBox();
        });
  }
}
