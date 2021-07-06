import 'package:flutter/material.dart';
import 'package:woodle/core/models/order_details_step/order_details_step_model.dart';
import 'package:woodle/ui/screens/order_details/widgets/order_step.dart';

class OrderSteps extends StatelessWidget {
  final List<OrderDetailStepModel> data;
  const OrderSteps({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          OrderStep(
              icon: Icons.verified_user,
              isCompleted: data[0].completed,
              title: data[0].status,
              time: data[0].statusTime),
          OrderStep(
              icon: Icons.room_service,
              isCompleted: data[1].completed,
              title: data[1].status,
              time: data[1].statusTime),
          OrderStep(
              icon: Icons.local_shipping,
              isCompleted: data[2].completed,
              title: data[2].status,
              time: data[2].statusTime),
          OrderStep(
              icon: Icons.card_giftcard,
              isCompleted: data[3].completed,
              title: data[3].status,
              time: data[3].statusTime),
        ],
      ),
    );
  }
}
