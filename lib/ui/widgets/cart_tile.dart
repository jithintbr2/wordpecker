import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';

class CartTile extends StatelessWidget {
  final bool? showCart;
  // final Function onCheckout;
  final int itemCount;
  final double totalPrice;
  const CartTile({
    Key? key,
    required this.itemCount,
    this.showCart = true,
    // required this.onCheckout,
    required this.totalPrice,
  }) : super(key: key);

  Widget _wrapEmpty({required testCase, required Widget child}) {
    if (testCase == null)
      return SizedBox();
    else
      return InkWell(
        onTap: testCase,
        child: child,
      );
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

  // void checkout(BuildContext context) {
  //   if (user != null)
  //     Navigator.pushNamed(context, '/orderPreview');
  //   else
  //     Navigator.pushNamed(context, '/authenticate');
  // }

  void handleCheckout(context) {
    final double minimumOrder = 100;
    if (totalPrice > minimumOrder) {
      Navigator.pushNamed(context, '/orderPreview');
    } else
      showDialog(
        context: context,
        builder: (BuildContext context) =>
            _buildPopupDialog(context, minimumOrder),
      );
  }

  @override
  Widget build(BuildContext context) {
    LocalStorage localStorage = LocalStorage();
    AddressModel? _getAddress() {
      if (localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(localStorage.get('currentAddress') as String);
        return AddressModel.fromJson(currentAddressRaw);
      }
      return null;
    }

    AddressModel? address = _getAddress();

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
              _wrapEmpty(
                  testCase: showCart!
                      ? () => Navigator.of(context).pushNamed('/cart')
                      : null,
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
              BlocBuilder<AuthenticationCubit, AuthenticationState>(
                  builder: (context, state) {
                if (state.user != null && address?.id != -1) {
                  return InkWell(
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
                  );
                }

                if (state.user != null && address?.id == -1) {
                  return InkWell(
                    onTap: () => Navigator.pushNamed(context, '/address'),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Pick Delivery Location",
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
                  );
                }

                return InkWell(
                  onTap: () => Navigator.pushNamed(context, '/authenticate'),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Login",
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
                );
              })
            ]),
      ),
    );
  }
}
