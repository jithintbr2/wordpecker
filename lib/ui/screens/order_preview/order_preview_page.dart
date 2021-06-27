import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/screens/order_preview/widgets/delivery_options.dart';
import 'package:woodle/ui/screens/order_preview/widgets/instruction_box.dart';

import 'widgets/cart_price.dart';

class OrderPreview extends HookWidget {
  const OrderPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartService service = CartService();
    useEffect(() {
      service.init();
      return () => service.dispose();
    }, []);

    return Scaffold(
      appBar: AppBar(title: Text('Order Summary')),
      body: _buildPage(context, service),
    );
  }

  Widget _buildPage(BuildContext context, CartService service) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: ListView(
          children: [
            CartPrice(service: service),
            DeliveryOptions(),
            InstructionBox(),
          ],
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: ElevatedButton(
            child: Text('Place Order'),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
