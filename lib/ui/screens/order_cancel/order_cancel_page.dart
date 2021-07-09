import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/ui/screens/order_cancel/bloc/order_cancel_bloc.dart';

class OrderCancelPage extends HookWidget {
  final int orderId;
  const OrderCancelPage({Key? key, required this.orderId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _reasonController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Cancel Order')),
      body: ListView(
        padding: EdgeInsets.all(10),
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 16),
          Text(
            "Note",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 8),
          Text(
            "Cancellation is not guaranteed.\nYou can send a cancel request to the seller.\nYou will be notified when the order is cancelled.",
            style:
                Theme.of(context).textTheme.headline6!.copyWith(fontSize: 15),
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: _reasonController,
            // enabled: !loading,
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            decoration: InputDecoration(
                counterText: "",
                labelText: "Cancellation reason (optional)",
                isDense: true,
                border: OutlineInputBorder()),
          ),
          SizedBox(height: 16),
          BlocBuilder<OrderCancelBloc, OrderCancelState>(
              builder: (context, state) => state.when(
                  idle: () => ElevatedButton(
                        onPressed: () {
                          context.read<OrderCancelBloc>().add(
                              OrderCancelEvent.cancelOrder(
                                  orderId, _reasonController.text));
                        },
                        child: Text('Request Cancellation'),
                        style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).errorColor),
                      ),
                  busy: () => ElevatedButton(
                        onPressed: null,
                        child: CircularProgressIndicator(),
                        style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).errorColor),
                      )))
        ],
      ),
    );
  }
}
