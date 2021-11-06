import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/wallet/wallet_model.dart';
import 'package:woodle/ui/screens/wallet/bloc/wallet_bloc.dart';
import 'package:woodle/ui/screens/wallet/widgets/reward_history.dart';
import 'package:woodle/ui/screens/wallet/widgets/title_bar.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

class WalletRedeemPage extends HookWidget {
  final double orderAmount;
  const WalletRedeemPage({Key? key, required this.orderAmount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<WalletBloc>().add(WalletEvent.fetchWalletData());
    }, []);
    return Scaffold(
      body: _buildBloc(),
    );
  }

  Widget _buildBloc() {
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(
                context,
                data,
                (int cardId) => context
                    .read<WalletBloc>()
                    .add(WalletEvent.scratchCard(cardId))),
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () => context
                    .read<WalletBloc>()
                    .add(WalletEvent.fetchWalletData())));
      },
    );
  }

  Widget _buildEnterAmount(BuildContext context, double walletBalance) {
    final _redeemAmountKey = GlobalKey<FormFieldState>();
    double redeemAmount = 0.0;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text(
                    "Redeem from wallet?",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          initialValue: "0.0",
                          key: _redeemAmountKey,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Amount",
                            isDense: true,
//                      border: OutlineInputBorder()
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            final limit =
                                [walletBalance, orderAmount].reduce(min);
                            if (value != null && value.isNotEmpty) {
                              if (double.parse(value) > limit) {
                                return "Enter amount below $limit";
                              }
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: ElevatedButton(
                          child: Text('Apply'),
                          onPressed: () {
                            redeemAmount =
                                _redeemAmountKey.currentState!.value != null
                                    ? double.parse(_redeemAmountKey
                                        .currentState!.value
                                        .toString())
                                    : 0.0;
                            if (_redeemAmountKey.currentState!.validate()) {
                              Navigator.of(context).pop(redeemAmount);
                            }
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPage(
      BuildContext context, WalletModel data, void Function(int) onScratch) {
    return Column(
      children: [
        WalletTitlebar(currentBalance: data.walletBalance),
        _buildEnterAmount(context, data.walletBalance),
        Expanded(
            child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            WalletRewardHistory(
              rewards: data.rewardDetails,
              onScratch: (int cardId) => onScratch(cardId),
            )
          ],
        ))
      ],
    );
  }
}
