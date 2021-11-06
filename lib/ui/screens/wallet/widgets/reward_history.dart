import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:scratcher/scratcher.dart';
import 'package:woodle/core/models/wallet_reward/wallet_reward_model.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/ui/screens/wallet/widgets/reward_card.dart';

class WalletRewardHistory extends StatelessWidget {
  final List<WalletRewardModel> rewards;
  final void Function(int) onScratch;
  const WalletRewardHistory(
      {Key? key, required this.rewards, required this.onScratch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.all(8),
        child: Text("Rewards",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 4),
        physics: NeverScrollableScrollPhysics(),
        children: rewards
            .map((reward) => reward.isOpen
                ? reward.scratched
                    ? PositiveRewardCard(reward: reward)
                    : ScratchableRewardCard(
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                contentPadding: EdgeInsets.all(0),
                                content: AspectRatio(
                                  aspectRatio: 1,
                                  child: ScratchAlert(
                                      reward: reward,
                                      onScratch: () => onScratch(reward.id)),
                                ),
                              );
                            },
                          );
                        },
                        tag: reward.hashCode)
                : NonScratchableRewardCard(onTap: () {}, tag: reward.hashCode))
            .toList(),
      )
    ]);
  }
}

class ScratchAlert extends HookWidget {
  final WalletRewardModel reward;
  final void Function() onScratch;
  const ScratchAlert({required this.reward, required this.onScratch});

  @override
  Widget build(BuildContext context) {
    final scratched = useState(false);
    if (scratched.value == true) {
      return PositiveRewardCard(reward: reward);
    }
    return Scratcher(
      accuracy: ScratchAccuracy.low,
      threshold: 25,
      brushSize: 50,
      onThreshold: () {
        scratched.value = true;
        onScratch();
      },
      image: Image.asset(
        Assets.rewardUnScratchedBig,
        fit: BoxFit.cover,
      ),
      color: Colors.blue,
      child: reward.point > 0
          ? PositiveRewardCard(reward: reward)
          : NegativeRewardCard(reward: reward),
    );
  }
}
