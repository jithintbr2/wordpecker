import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/authentication/bloc/referal_check_bloc.dart';

class ReferralCodeWidgetSection extends HookWidget {
  final bool visible;
  final TextEditingController controller;
  const ReferralCodeWidgetSection(
      {Key? key, required this.visible, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      controller.addListener(() {
        if (context.read<ReferalCheckBloc>().state !=
            ReferalCheckState.initial())
          context.read<ReferalCheckBloc>().add(ReferalCheckEvent.reset());
      });
    }, []);
    return Visibility(
        visible: visible,
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: TextFormField(
                style: TextStyle(
                    color: Colors.black, fontFamily: Config.fontFamily),
                controller: controller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Referral ID (optional)",
                  icon: BlocBuilder<ReferalCheckBloc, ReferalCheckState>(
                      builder: (context, state) => state.when(
                          initial: () =>
                              Icon(Icons.perm_identity, color: Colors.grey),
                          loading: () => CircularProgressIndicator(),
                          loaded: () => Icon(Icons.check_circle,
                              color: Theme.of(context).primaryColor),
                          failed: () => Icon(
                            Icons.cancel,
                            color: Theme.of(context).errorColor,
                          ))),
                  isDense: true,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            OutlinedButton(
                onPressed: () => context
                    .read<ReferalCheckBloc>()
                    .add(ReferalCheckEvent.checkValidity(controller.text)),
                child: Text('Check Referral Code Validity'))
          ],
        ));
  }
}