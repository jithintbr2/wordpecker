import 'package:flutter/material.dart';
import 'package:woodle/core/models/wallet_reward/wallet_reward_model.dart';

class WalletRewardHistory extends StatelessWidget {
  final List<WalletRewardModel> rewards;
  const WalletRewardHistory({Key? key, required this.rewards})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text("Rewards",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        // GridView.count(crossAxisCount: 2, shrinkWrap: true, padding: EdgeInsets.symmetric(horizontal: 4), physics: NeverScrollableScrollPhysics(), children: rewards.map((reward) => reward.isOpen ?),)
      ],
    );
  }
}
