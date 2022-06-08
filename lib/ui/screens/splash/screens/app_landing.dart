import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/core/settings/config.dart';

class AppLandingScreen extends HookWidget {
  const AppLandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _agreed = useState(false);
    return Scaffold(
        backgroundColor: Color(0xFF27B4C1),
        body: Container(
          padding: EdgeInsets.all(10),
          constraints: BoxConstraints.expand(),
          // decoration: BoxDecoration(
          //   image: DecorationImage(image: AssetImage(assetName))
          // ),
          child: Column(
            children: [
              Expanded(
                  child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  child: Hero(
                      tag: 'logo',
                      child: Image.asset(Assets.appIcon,
                          height: 120, fit: BoxFit.contain)),
                ),
              )),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: _agreed.value
                              ? () => Navigator.pushReplacementNamed(
                                  context,
                                  Config.useDashboardEntry
                                      ? '/homeDashboard'
                                      : '/home')
                              : null,
                          child: Text('Skip'))),
                  SizedBox(width: 10),
                  Expanded(
                      child: ElevatedButton(

                          onPressed: _agreed.value
                              ? () =>
                                  Navigator.pushNamed(context, '/authenticate')
                              : null,
                          child: Text('Login/Register')))
                ],
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/webView',
                    arguments: {
                      "title": "Terms and Conditions",
                      "url": Config.termsConditions
                    }),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        side: BorderSide(
                          // ======> CHANGE THE BORDER COLOR HERE <======
                          color: Colors.black,
                          // Give your checkbox border a custom width
                          width: 1.5,
                        ),
                        value: _agreed.value,
                        onChanged: (value) => _agreed.value = !_agreed.value),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "I agree to the",
                            style: TextStyle(
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: " Terms and conditions",
                            style: TextStyle(
                                color:Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
