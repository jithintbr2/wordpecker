import 'package:flutter/material.dart';
import 'package:woodle/core/models/wallet_reward/wallet_reward_model.dart';
import 'package:woodle/core/settings/assets.dart';

///Base class for other Reward Card Widgets
///Donot use this directly in page builds.
class RewardCard extends StatelessWidget {
  final Widget child;
  const RewardCard({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Assets.rewardCardBackground),
          fit: BoxFit.cover,
        )),
        padding: EdgeInsets.zero,
        child: child,
      ),
    );
  }
}

class ScratchableRewardCard extends StatelessWidget {
  final Object tag;
  final void Function()? onTap;
  const ScratchableRewardCard(
      {Key? key, required this.onTap, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: RewardCard(
            child:
                Hero(tag: tag, child: Image.asset(Assets.rewardUnScratched))));
  }
}

class NonScratchableRewardCard extends StatelessWidget {
  final Object tag;
  final void Function()? onTap;
  const NonScratchableRewardCard(
      {Key? key, required this.onTap, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: RewardCard(
            child: Stack(
          children: [
            Hero(tag: tag, child: Image.asset(Assets.rewardLockedIcon)),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    color: Theme.of(context).canvasColor,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Unlock after Delivery & Verification",
                      textAlign: TextAlign.center,
                    )))
          ],
        )));
  }
}

///Reward Card used when a postive feedback is to be presented
class PositiveRewardCard extends StatelessWidget {
  final WalletRewardModel reward;
  const PositiveRewardCard({required this.reward, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RewardCard(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            child: Hero(
                tag: reward.hashCode, child: Image.asset(Assets.rewardWon))),
        Text("You've won", style: TextStyle(fontWeight: FontWeight.bold)),
        Text(reward.point.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
        Text(reward.description,
            style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 10))
      ],
    ));
  }
}

class NegativeRewardCard extends StatelessWidget {
  final WalletRewardModel reward;
  const NegativeRewardCard({Key? key, required this.reward}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RewardCard(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Expanded(child: Hero(tag: reward.hashCode, child: Image.asset(Assets.reward))),
        Text("Better luck\nnext time!",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ));
  }
}
