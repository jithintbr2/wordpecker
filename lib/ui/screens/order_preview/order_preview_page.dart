import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/order_preview/order_preview_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/ui/screens/order_preview/bloc/order_preview_bloc.dart';
import 'package:woodle/ui/screens/order_preview/widgets/delivery_options.dart';
import 'package:woodle/ui/screens/order_preview/widgets/instruction_box.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

import 'widgets/cart_price.dart';

class OrderPreviewPage extends HookWidget {
  const OrderPreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartService service = CartService();
    useEffect(() {
      context
          .read<OrderPreviewBloc>()
          .add(OrderPreviewEvent.getSupportingData());
    }, []);

    return Scaffold(
      appBar: AppBar(title: Text('Order Summary')),
      body: _buildBloc(service),
    );
  }

  _buildBloc(CartService service) {
    return BlocBuilder<OrderPreviewBloc, OrderPreviewState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(context, service, data),
            failed: (error) => FailedView(
                exceptions: error,
                onRetry: () {
                  context
                      .read<OrderPreviewBloc>()
                      .add(OrderPreviewEvent.getSupportingData());
                }));
      },
    );
  }

  Widget _buildPage(
      BuildContext context, CartService service, OrderPreviewModel data) {
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
