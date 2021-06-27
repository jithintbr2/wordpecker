import 'package:flutter/material.dart';
import 'package:woodle/core/settings/config.dart';

class CartTile extends StatelessWidget {
  final Function? onBodyTap;
  final Function onCheckout;
  final int itemCount;
  final double totalPrice;
  const CartTile({
    Key? key,
    required this.itemCount,
    this.onBodyTap,
    required this.onCheckout,
    required this.totalPrice,
  }) : super(key: key);

  Widget _WrapEmpty({required testCase, required Widget child}) {
    if (testCase == null)
      return SizedBox();
    else
      return child;
  }

  Widget _buildPopupDialog(BuildContext context, minorder) {
    return new AlertDialog(
      title: Text("Insufficient Ammount"),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("The minimum purchase order is Rs.$minorder")],
      ),
      actions: [
        ElevatedButton(
          child: Text('Okay'),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );
  }

  void checkout(BuildContext context) {
    Navigator.pushNamed(context, '/orderPreview');
  }

  void handleCheckout(context) {
    final double minimumOrder = 100;
    if (totalPrice > minimumOrder)
      checkout(context);
    else
      showDialog(
        context: context,
        builder: (BuildContext context) =>
            _buildPopupDialog(context, minimumOrder),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      height: Config.cartTileHeight,
      child: InkWell(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Wrap(
              direction: Axis.vertical,
              spacing: 4,
              children: [
                Text(
                  "$itemCount items",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text(
                  "₹${totalPrice.toStringAsFixed(2)}",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            _WrapEmpty(
                testCase: onBodyTap,
                child: Wrap(
                  spacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      size: 16,
                      color: Colors.white,
                    ),
                    Text(
                      "View Cart",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
            InkWell(
              onTap: () => handleCheckout(context),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Checkout",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.play_arrow,
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
