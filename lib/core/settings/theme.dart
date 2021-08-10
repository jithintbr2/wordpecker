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
      iconTheme: IconThemeData(color: Config.iconColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Config.buttonColor))),
      buttonTheme: ButtonThemeData(buttonColor: Config.buttonColor));
}
