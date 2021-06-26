import 'package:flutter/material.dart';

ThemeData appTheme() {
  //Add more
  TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
        headline1: base.headline1!.copyWith(fontSize: 22, color: Colors.black),
        headline6:
            base.headline6!.copyWith(fontSize: 15.0, color: Colors.green));
  }

  IconThemeData _iconTheme(IconThemeData base) {
    return base.copyWith(color: Colors.white, size: 20);
  }

  final ThemeData base = ThemeData.light();

  return base.copyWith(
      textTheme: _textTheme(base.textTheme),
      primaryColor: Color(0xffce107c),
      indicatorColor: Color(0xFF807A6B),
      scaffoldBackgroundColor: Color(0xFFF5F5F5),
      accentColor: Color(0xFFFFF8E1),
      buttonColor: Colors.white,
      backgroundColor: Colors.white,
      iconTheme: _iconTheme(base.iconTheme),
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: Color(0xffce107c),
        unselectedLabelColor: Colors.grey,
      ));
}
