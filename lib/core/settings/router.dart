import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/ui/screens/authentication/authentication_page.dart';
import 'package:woodle/ui/screens/authentication/bloc/authenticationpage_bloc.dart';
import 'package:woodle/ui/screens/splash/bloc/splash_bloc.dart';
import 'package:woodle/ui/screens/splash/splash_page.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _generatePlatformRoute(BlocProvider(
          create: (context) => SplashBloc(
              authenticationStatus: context.read<AuthenticationCubit>(),
              repository: context.read<ApplicationRepository>()),
          child: SplashPage(),
        ));

      case '/authenticate':
        return _generatePlatformRoute(BlocProvider(
          create: (context) => AuthenticationpageBloc(
              authenticationStatus: context.read<AuthenticationCubit>(),
              context: context,
              repository: context.read<ApplicationRepository>()),
          child: AuthenticationPage(referredLink: null),
        ));

      // case '/address':
      //   return _generatePlatformRoute(AddressPage());

      // case '/cart':
      //   return _generatePlatformRoute(CartPage());

      // case '/categoryItems':
      //   return _generatePlatformRoute(BlocProvider(
      //     create: (_) => CategoryItemsBloc(),
      //     child: CategoryItemsPage(categoryId: 1, categoryName: "categoryName"),
      //   ));

      // case '/landing':
      //   return _generatePlatformRoute(LandingPage());

      // case '/login':
      //   return _generatePlatformRoute(AuthenticationPage());

      // case '/orderPreview':
      //   return _generatePlatformRoute(OrderPreview());

      // case '/orders':
      //   return _generatePlatformRoute(OrdersPage());

      // case '/profile':
      //   return _generatePlatformRoute(ProfilePage());

      // case '/home':
      //   return _generatePlatformRoute(
      //       BlocProvider(create: (_) => HomeBloc(), child: HomePage()));

      // case '/update':
      //   return _generatePlatformRoute(CriticalUpdatePage());

      // default:
      //   return _generatePlatformRoute(LandingPage());
      default:
        return _generatePlatformRoute(Container());
    }
  }

  Route _generatePlatformRoute(Widget page) {
    return Platform.isIOS
        ? CupertinoPageRoute(builder: (_) => page)
        : MaterialPageRoute(builder: (_) => page);
  }
}
