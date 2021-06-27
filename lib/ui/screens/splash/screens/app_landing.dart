import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/settings/assets.dart';

class AppLandingScreen extends HookWidget {
  const AppLandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _agreed = useState(false);
    return Scaffold(
        backgroundColor: Colors.white,
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
                child: Image.asset(
                  Assets.landingIcon,
                  fit: BoxFit.fitHeight,
                ),
              )),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: _agreed.value
                              ? () => Navigator.pushReplacementNamed(
                                  context, '/home')
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
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Checkbox(
                        value: _agreed.value,
                        onChanged: (value) => _agreed.value = !_agreed.value),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "I agree to the",
                              style: Theme.of(context).textTheme.caption),
                          TextSpan(
                            text: " terms and conditions",
                            style: TextStyle(color: Colors.green[900]),
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
