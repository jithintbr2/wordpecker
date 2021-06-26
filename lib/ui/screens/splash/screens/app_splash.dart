import 'package:flutter/material.dart';
import 'package:woodle/core/settings/assets.dart';

class AppSplashScreen extends StatelessWidget {
  const AppSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.landingIcon,
          fit: BoxFit.fitHeight,
        ),
        CircularProgressIndicator()
      ],
    ));
  }
}
