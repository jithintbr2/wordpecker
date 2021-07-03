import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/wallet/wallet_model.dart';
import 'package:woodle/ui/screens/wallet/bloc/wallet_bloc.dart';
import 'package:woodle/ui/screens/wallet/widgets/reward_history.dart';
import 'package:woodle/ui/screens/wallet/widgets/title_bar.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

class WalletPage extends HookWidget {
  const WalletPage({Key? key}) : super(key: key);

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
            loaded: (data) => _buildPage(data),
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () => context
                    .read<WalletBloc>()
                    .add(WalletEvent.fetchWalletData())));
      },
    );
  }

  Widget _buildPage(WalletModel data) {
    return Column(
      children: [
        WalletTitlebar(currentBalance: data.walletBalance),
        Expanded(
            child: ListView(
          padding: EdgeInsets.all(0),
          children: [WalletRewardHistory(rewards: data.rewardDetails)],
        ))
      ],
    );
  }
}
