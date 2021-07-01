import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/ui/screens/splash/bloc/splash_bloc.dart';
import 'package:woodle/ui/screens/splash/screens/app_landing.dart';
import 'package:woodle/ui/screens/splash/screens/app_splash.dart';
import 'package:woodle/ui/screens/splash/screens/app_update.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _view = AppSplashScreen();
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      state.when(unknown: () {
        context.read<SplashBloc>().add(SplashEvent.verify());
      }, unVerified: () {
        _view = AppUpdateScreen();
      }, verified: () {
        _view = AppLandingScreen();
      });
      return _view;
    });
  }
}
