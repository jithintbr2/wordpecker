import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/referral/referral_model.dart';
import 'package:woodle/ui/screens/referral/bloc/referral_bloc.dart';
import 'package:woodle/ui/screens/referral/widget/earnings_table.dart';
import 'package:woodle/ui/screens/referral/widget/instruction_box.dart';
import 'package:woodle/ui/screens/referral/widget/refer_box.dart';
import 'package:woodle/ui/screens/referral/widget/title_bar.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

class ReferralPage extends HookWidget {
  const ReferralPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<ReferralBloc>().add(ReferralEvent.fetchReferralData());
    }, []);
    return Scaffold(
      body: _buildBloc(),
    );
  }

  Widget _buildBloc() {
    return BlocBuilder<ReferralBloc, ReferralState>(
        builder: (context, state) => state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(data),
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () => context
                    .read<ReferralBloc>()
                    .add(ReferralEvent.fetchReferralData()))));
  }

  Widget _buildPage(ReferralModel data) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        ReferralTitlebar(currentBalance: data.walletBalance),
        ReferBox(
            referralCode: data.referralCode, shareMessage: data.shareMessage),
        ReferralInstructionBox(
            instructions: data.conditions, title: data.conditionTitle),
        EarningsTable(earnings: data.myEarnings)
      ],
    );
  }
}
