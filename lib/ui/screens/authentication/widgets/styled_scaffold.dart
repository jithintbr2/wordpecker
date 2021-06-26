import 'package:flutter/material.dart';
import 'package:woodle/core/settings/assets.dart';

class StyledScaffold extends StatelessWidget {
  final Widget child;
  const StyledScaffold({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.loginBackground),
                  fit: BoxFit.cover)),
        ),
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
          Theme.of(context).primaryColor.withOpacity(0.7),
          Colors.transparent
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter))),
        Center(child: child)
      ],
    ));
  }
}
