import 'package:flutter/material.dart';
import 'package:woodle/core/models/order_details/order_details_model.dart';

class OrderTable extends StatelessWidget {
  final OrderDetailsModel data;
  const OrderTable({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: Text(data.shopName,
                        style: Theme.of(context).textTheme.headline6)),
                Text("Order #: ${data.orderId}",
                    style: Theme.of(context).textTheme.headline6),
              ],
            ),
            Divider(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(data.orderTime,
                    style: Theme.of(context).textTheme.bodyText2),
                Text(data.orderDate,
                    style: Theme.of(context).textTheme.bodyText2),
              ],
            ),
            SizedBox(height: 8),
            Divider(
              height: 16,
              color: Colors.black,
            ),
            _tableHeading(),
            Divider(height: 16, color: Colors.black),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, int index) {
                final item = data.items[index];
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(flex: 3, child: Text(item.itemName)),
                      Expanded(
                          child: Text("${item.itemQty}",
                              textAlign: TextAlign.center)),
                      Expanded(
                          child: Text(item.amount.toString(),
                              textAlign: TextAlign.end)),
                      SizedBox(width: 8),
                      Expanded(
                          child: Text(
                        item.total.toString(),
                        textAlign: TextAlign.end,
                      )),
                    ],
                  ),
                );
              },
              itemCount: data.items.length,
              shrinkWrap: true,
            ),
            Divider(height: 16, color: Colors.black),
            Row(
              children: <Widget>[
                Expanded(flex: 3, child: Text("Sub Total")),
                Expanded(
                    child: Text("${data.totalItems}",
                        textAlign: TextAlign.center)),
                SizedBox(width: 8),
                Expanded(
                    flex: 2,
                    child: Text(
                      "₹ ${data.amount}",
                      textAlign: TextAlign.end,
                    )),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: <Widget>[
                Expanded(flex: 3, child: Text("Delivery Charge")),
                Expanded(
                    flex: 3,
                    child: Text(
                      "₹ ${data.deliveryCharge}",
                      textAlign: TextAlign.end,
                    )),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Text("Total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16))),
                Expanded(
                    flex: 3,
                    child: Text("₹ ${data.totalAmount}",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _tableHeading() {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 3,
            child: Text(
              "Item",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        Expanded(
            child: Text("Qty",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold))),
        Expanded(
            child: Text("Price",
                textAlign: TextAlign.end,
                style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(width: 8),
        Expanded(
            child: Text("Amount",
                textAlign: TextAlign.end,
                style: TextStyle(fontWeight: FontWeight.bold))),
      ],
    );
  }
}
