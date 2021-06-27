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

  // Application Feature
  static bool get useDashboardEntry => false;
  static bool get isMultiVendor => false;
  static bool get isMultiLocation => false;
  static bool get usePaymentOptionsFromServer => false;
  static bool get usePaymentGateway => false;

  static int get locationId => 0;

  // Developer Only
}
