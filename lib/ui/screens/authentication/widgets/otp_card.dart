import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:woodle/core/settings/assets.dart';

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

  @override
  Widget build(BuildContext context) {
    int generatedOTP = generateOTP();
    useEffect(() {
      SmsAutoFill().listenForCode;
      SmsAutoFill()
          .getAppSignature
          .then((signature) => sendOTP(signature, generatedOTP));
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
            Container(
              height: 100,
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
