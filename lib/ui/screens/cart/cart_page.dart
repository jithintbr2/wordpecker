import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/widgets/cart_tile.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';

class CartPage extends HookWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartService service = CartService();

    useEffect(() {
      service.init();
      return () => service.dispose();
    }, []);

    return Scaffold(
        appBar: AppBar(title: Text('Cart')),
        body: StreamBuilder(
            stream: service.controller,
            builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
              if (snap.data != null && snap.data!.isNotEmpty)
                return _buildPage(snap.data!, service);
              return EmptyView(
                icon: Icons.add_shopping_cart,
                title: "Your Cart is Empty",
              );
            }));
  }

  Widget _buildPage(List<ItemVarientModel> data, CartService service) {
    List<ItemVarientModel> sortedData = data.toSet().toList();
    double totalPrice = 0;
    int itemCount = 0;

    data.forEach((item) {
      totalPrice += item.salePrice!;
      itemCount += 1;
    });

    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) {
            int quantity = 0;
            data.forEach((item) {
              if (item.varientId == sortedData[index].varientId) quantity += 1;
            });
            return ItemVarientTile(
                showParent: true,
                item: sortedData[index],
                onAdd: () => service.addItem(sortedData[index]),
                onRemove: () => service.removeItem(sortedData[index]),
                quantity: quantity);
          },
          itemCount: sortedData.length,
        )),
        CartTile(
          onCheckout: () {},
          totalPrice: totalPrice,
          itemCount: itemCount,
        )
      ],
    );
  }
}
