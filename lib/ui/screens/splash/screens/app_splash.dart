import 'package:flutter/material.dart';
import 'package:woodle/core/settings/assets.dart';

class AppSplashScreen extends StatelessWidget {
  const AppSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF27B4C1),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,

            child: Hero(
                tag: 'logo',
                child: Image.asset(Assets.appIcon,
                    height: 120, fit: BoxFit.contain)),
          ),
          CircularProgressIndicator()
        ],
      ),
    ));
  }
}
