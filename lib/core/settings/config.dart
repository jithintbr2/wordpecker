class Config {
  // Application Whitelabel
  static String get applicationName => "Delvento Template";
  static int get contactNumber => 8848486761;
  static String get apiBaseUrl =>
      "https://woodle.in/delvento/index.php/User_mobile_version_nine";
  static String get cancellationPolicy =>
      "http://greensdeliver.com/refund_policy";
  static String get termsConditions =>
      "http://greensdeliver.com/privacy_terms_and_condition";

  // Keys
  static String kGoogleApiKey = "AIzaSyBIFTn0-99un9Vg_irKX9ve2i54xcTMAO4";

  // Application UI
  static double get cartTileHeight => 60;
  static bool get addButtonInvert => false;

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
