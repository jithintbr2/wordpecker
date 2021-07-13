import 'dart:io';

import 'package:flutter/material.dart';
import 'package:woodle/core/settings/assets.dart';

class ReferralTitlebar extends StatelessWidget {
  final double currentBalance;
  const ReferralTitlebar({required this.currentBalance, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.rewardAppBarBackground))),
      // color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                color: Theme.of(context).canvasColor,
              ),
              onPressed: () => Navigator.of(context).pop()),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text("₹ $currentBalance",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Theme.of(context).canvasColor)),
              SizedBox(height: 4),
              Text("Current Balance",
                  style: TextStyle(
                      fontSize: 12, color: Theme.of(context).canvasColor)),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
