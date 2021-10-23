import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:woodle/core/settings/assets.dart';

int useCountDown(int count) => use(_CountTimer(count: count));

class _CountTimer extends Hook<int> {
  final int count;
  const _CountTimer({required this.count});

  @override
  __CountTimerState createState() => __CountTimerState();
}

class __CountTimerState extends HookState<int, _CountTimer> {
  late Timer _timer;
  int _currentCount = 0;

  @override
  void initHook() {
    super.initHook();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentCount = timer.tick;
        if (hook.count - _currentCount == 0) _timer.cancel();
      });
    });
  }

  @override
  int build(BuildContext context) {
    return _currentCount - hook.count == 0 ? 0 : hook.count - _currentCount;
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

class OTPCard extends HookWidget {
  final void Function(String signature, int otp) sendOTP;
  final void Function() yeildRegisterState;
  final TextEditingController otp;
  const OTPCard({
    required this.sendOTP,
    required this.otp,
    required this.yeildRegisterState,
    Key? key,
  }) : super(key: key);

  int generateOTP() {
    final rng = Random();
    var multiplier = rng.nextInt(9);
    multiplier = multiplier == 0 ? 1 : multiplier;
    final otp = rng.nextInt(999) + (1000 * multiplier);
    return otp;
  }

  smsFill(int generatedOTP) {
    SmsAutoFill().listenForCode;
    if (Platform.isIOS)
      sendOTP('', generatedOTP);
    else
      SmsAutoFill()
          .getAppSignature
          .then((signature) => sendOTP(signature, generatedOTP));
  }

  @override
  Widget build(BuildContext context) {
    int generatedOTP = generateOTP();
    useEffect(() {
      smsFill(generatedOTP);
    }, []);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 450,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 50),
            Hero(
                tag: 'logo',
                child: Image.asset(Assets.appIcon,
                    height: 80, fit: BoxFit.contain)),
            SizedBox(height: 8),
            Text(
              'OTP',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: PinFieldAutoFill(
                controller: otp,
                codeLength: 4,
                // onCodeChanged: (code) => otp.text = code ?? "",
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 50),
                child: ElevatedButton(
                    onPressed: () {
                      print(otp.text == generatedOTP.toString());
                      if (otp.text == generatedOTP.toString())
                        yeildRegisterState();
                      else
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('OTP missmatch'),
                          backgroundColor: Colors.red,
                          elevation: 10,
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(10),
                        ));
                    },
                    child: Text("Verify"))),
            ResendOTP(sendOTP: () => smsFill(generatedOTP)),
            Container(
              height: 50,
              alignment: Alignment.bottomRight,
              child: TextButton(
                child: Text("Back",
                    style: TextStyle(color: Theme.of(context).primaryColor)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ResendOTP extends HookWidget {
  final void Function() sendOTP;
  const ResendOTP({Key? key, required this.sendOTP}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int time = 0;
    time = useCountDown(30);
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: time == 0
          ? InkWell(
              onTap: sendOTP,
              child: Text('Resend OTP',
                  style: TextStyle(color: Theme.of(context).primaryColor)))
          : Text('Resend OTP in $time seconds'),
    );
  }
}
