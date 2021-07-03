import 'package:flutter/material.dart';
import 'package:woodle/core/settings/assets.dart';

class AppSplashScreen extends StatelessWidget {
  const AppSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
              tag: 'logo',
              child: Image.asset(Assets.appIcon,
                  height: 120, fit: BoxFit.contain)),
          CircularProgressIndicator()
        ],
      ),
    ));
  }
}
