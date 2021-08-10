import 'package:flutter/material.dart';

class Config {
  // Application Whitelabel
  static String get applicationName => "Delvento Template";
  static int get contactNumber => 8848486761;
  static String get apiBaseUrl =>
      "https://woodle.in/delvento/index.php/User_mobile_version_nine";
  static String get cancellationPolicy =>
      "https://delvento.in/cancellation_policy/";
  static String get termsConditions =>
      "https://delvento.in/privacy_terms_and_condition/";
  static String get aboutUs => "https://delvento.in/about_us/";

  // Keys
  static String kGoogleApiKey = "AIzaSyBIFTn0-99un9Vg_irKX9ve2i54xcTMAO4";

  // Application UI
  static double get cartTileHeight => 60;
  static bool get addButtonInvert => false;

  static Color get themeColor => Colors.blue;
  static Color get iconColor => Colors.blue;
  static Color get buttonColor => Colors.blue;
  static Color get drawerIconColor => Colors.blue;
  static Color get shopListingPageMenuHeadingColor => Colors.blue;
  static Color get textBoxBorderColor => Colors.blue;

  // Application Feature
  static bool get useDashboardEntry => true;
  static bool get isMultiVendor => false;
  static bool get isMultiLocation => true;
  static bool get isPurchasableFromMultiVendor => false;
  static int get itemCategoriesLimit => 5;
  static int get shopCategoriesLimit => 5;

  static int get locationId => -1;

  // Developer Only
  static bool get debugger => true;
}
