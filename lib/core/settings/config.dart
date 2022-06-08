import 'dart:io';
import 'package:flutter/material.dart';

class Config {
  // Application Whitelabel
  static String get applicationName => "Wordpecker";
  static int get contactNumber => 8848486761;
  static String get apiBaseUrl => Platform.isIOS
      ? "https://wordpeckermedia.com/app/User_mobile_version_one_ios"
      : "https://wordpeckermedia.com/app/User_mobile_version_one";
  static String get cancellationPolicy =>
      "https://wordpeckermedia.com/cancellation_policy/";
  static String get termsConditions =>
      "https://wordpeckermedia.com/privacy_terms_and_condition/";
  static String get aboutUs => "https://wordpeckermedia.com/about_us/";
  static String get appStoreLink =>Platform.isIOS
      ? "https://apps.apple.com/in/app/delboys/id1587490189"
      :"https://play.google.com/store/apps/details?id=com.wordpecker.user";

  // Keys
  static String kGoogleApiKey = "AIzaSyD7woyc8MbWwT-GdU3zgCIAxmZCKgUAqR0";

  // Application UI
  static double get cartTileHeight => 60;
  static bool get addButtonInvert => false;

  static Color get themeColor => Color(0xFF27B4C1);
  static String get fontFamily => 'CenturyGothic';
  static Color get iconColor =>Color(0xFF27B4C1);
  static Color get buttonColor =>Color(0xFF44B1A9);
  static Color get drawerIconColor => Color(0xFF27B4C1);
  static Color get shopListingPageMenuHeadingColor =>Color(0xFF27B4C1);
  static Color get textBoxBorderColor => Color(0xFF27B4C1);

  // Application Feature
  static bool get useDashboardEntry => true;
  static bool get isMultiVendor => false;
  static bool get isMultiLocation => true;
  static bool get isPurchasableFromMultiVendor => false;
  static int get itemCategoriesLimit => 6;
  static int get shopCategoriesLimit => 9;

  static int get locationId => 77;

  // Developer Only
  static bool get debugger => true;
}