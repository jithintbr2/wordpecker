import 'package:flutter/material.dart';
import 'package:woodle/core/settings/config.dart';

ThemeData appTheme() {
      final ThemeData base = ThemeData.light();

      return base.copyWith(
          primaryColor: Config.themeColor,
          canvasColor: Colors.white,
          accentColor: Config.themeColor,
          buttonColor: Colors.white,
          backgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              backgroundColor: Config.themeColor,
              toolbarTextStyle: TextStyle(fontFamily: Config.fontFamily),
              titleTextStyle: TextStyle(fontFamily: Config.fontFamily)),
          textTheme: TextTheme(
                bodyText1:
                TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
                bodyText2:
                TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
                button: TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
                caption: TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
                headline1:
                TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
                headline2:
                TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
                headline3:
                TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
                subtitle1:
                TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
                subtitle2:
                TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
                headline5:
                TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
                headline6:
                TextStyle(fontFamily: Config.fontFamily, color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Config.iconColor),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Config.buttonColor))),
          buttonTheme: ButtonThemeData(buttonColor: Config.buttonColor));
}