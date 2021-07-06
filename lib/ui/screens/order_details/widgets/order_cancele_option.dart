import 'package:flutter/material.dart';
import 'package:woodle/core/models/order_details/order_details_model.dart';

class OrderCancelOption extends StatelessWidget {
  final OrderDetailsModel data;
  const OrderCancelOption({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: data.status.toLowerCase() == "cancelled"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red, width: 2),
                          color: Colors.red),
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Order Cancelled",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  : data.cancelable && !data.cancellationRequested
                      ? ElevatedButton(
                          onPressed: () {
                            if (data.cancelable &&
                                !data.cancellationRequested) {}
                          },
                          child: Text('Cancel'),
                          style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).errorColor))
                      : Container(),
            ),
          ],
        ),
        !data.cancelable &&
                !data.cancellationRequested &&
                data.status.toLowerCase() != "cancelled" &&
                data.status.toLowerCase() != "delivered"
            ? Text(
                "Cancellation not available now",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Theme.of(context).errorColor,
                    fontWeight: FontWeight.bold),
              )
            : SizedBox(),
        data.cancellationRequested &&
                data.status.toLowerCase() != "cancelled" &&
                data.status.toLowerCase() != "delivered"
            ? Text(
                "Cancellation requested",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Theme.of(context).errorColor,
                    fontWeight: FontWeight.bold),
              )
            : SizedBox(),
      ],
    );
  }
}
