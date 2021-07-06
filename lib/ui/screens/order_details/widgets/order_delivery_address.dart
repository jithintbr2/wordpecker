import 'package:flutter/material.dart';
import 'package:woodle/core/models/order_details/order_details_model.dart';

class OrderDeliveryAddress extends StatelessWidget {
  final OrderDetailsModel data;
  const OrderDeliveryAddress({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Delivery Address",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: 20, color: Colors.blueGrey[600]),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            data.nickname.toLowerCase() == "home"
                ? Icons.home
                : data.nickname.toLowerCase() == "work"
                    ? Icons.work
                    : Icons.place,
            color: Colors.grey,
          ),
          title: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              data.nickname,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "${data.locality}, ${data.houseNo}",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(height: 4),
              Text(
                "PIN: ${data.pincode}",
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
