import 'package:flutter/material.dart';
import 'package:woodle/core/settings/assets.dart';

class AppUpdateScreen extends StatelessWidget {
  const AppUpdateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
              tag: 'logo',
              child: Image.asset(Assets.appIcon,
                  height: 120, fit: BoxFit.contain)),
          Text("We are better than ever",
              style: Theme.of(context).textTheme.headline6),
          SizedBox(height: 10),
          Text(
              "Your current version is outdated and out of service. Please update to continue with your service",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(fontWeight: FontWeight.w300)),
          SizedBox(height: 35),
          ElevatedButton(
              onPressed: () async {
                // if (await canLaunch(storeLink)) await launch(storeLink);
              },
              child: Text('Update Now'))
        ],
      ),
    ));
  }
}
