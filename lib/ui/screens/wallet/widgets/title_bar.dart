import 'dart:io';

import 'package:flutter/material.dart';

class WalletTitlebar extends StatelessWidget {
  final double currentBalance;
  const WalletTitlebar({required this.currentBalance, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                color: Theme.of(context).canvasColor,
              ),
              onPressed: () => Navigator.of(context).pop()),
          SizedBox(width: 16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text("₹ $currentBalance",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Theme.of(context).canvasColor)),
              SizedBox(height: 4),
              Text("Current Balance",
                  style: TextStyle(
                      fontSize: 12, color: Theme.of(context).canvasColor)),
            ],
          )),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(height: 30),
            TextButton(
              child: Text("Withdraw from Wallet",
                  style:
                      TextStyle(color: Theme.of(context).secondaryHeaderColor)),
              onPressed: () {},
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text("How to Earn Cashback",
                  style:
                      TextStyle(color: Theme.of(context).secondaryHeaderColor)),
              onPressed: () {},
            )
          ])
        ],
      ),
    );
  }
}
