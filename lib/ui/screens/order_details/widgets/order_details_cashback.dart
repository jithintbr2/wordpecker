import 'package:flutter/material.dart';
import 'package:woodle/core/models/order_details/order_details_model.dart';
import 'package:woodle/core/settings/assets.dart';

class OrderDetailsCashback extends StatelessWidget {
  final OrderDetailsModel data;
  final int? tempId;
  final bool showCashback;
  final void Function() onClose;
  const OrderDetailsCashback({
    Key? key,
    required this.data,
    this.tempId,
    required this.showCashback,
    required this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (showCashback)
      return Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.white,
                onPressed: onClose,
              ),
            ),
            Spacer(flex: 1),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Card(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(Assets.rewardCardBackground),
                              fit: BoxFit.cover,
                            )),
                            child: Image.asset(Assets.rewardLockedIcon)),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "You've won a Scratch Card",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "The Cashback will be credited to wallet after order delivery and verification",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    width: 150,
                    child:
                        ElevatedButton(child: Text('OK'), onPressed: onClose),
                  )
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      );
    return SizedBox();
  }
}
