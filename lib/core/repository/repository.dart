import 'package:package_info_plus/package_info_plus.dart';
import 'package:version/version.dart';
import 'package:woodle/core/models/app_version/app_verification_model.dart';
import 'package:woodle/core/models/app_version/app_version_model.dart';
import 'package:woodle/core/models/home_page/home_page_model.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/user/user_model.dart';
import 'package:woodle/core/services/http_client.dart';

class ApplicationRepository {
  HttpService _client = HttpService();

  ///Verifies the current application version.
  Future<AppVerificationModel> verifyApplication() {
    return _client
        .getRequest('/app_update')
        .then((value) => AppVersionModel.fromJson(value['data']))
        .then((value) =>
            PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
              Version _appVersion = Version.parse(packageInfo.version);
              Version _currentVersion = Version.parse(value.currentVersion);
              Version _minVersion = Version.parse(value.minimumVersion);

              return AppVerificationModel(
                  updateAvailable: _appVersion < _currentVersion,
                  verified: _appVersion >= _minVersion);
            }));
  }

  ///Verifies the user based on token.
  Future<UserModel?> verifyUser(String token) {
    Map<String, dynamic> parameters = {"token": token};
    return _client
        .getRequest('check_tocken_valid', parameters: parameters)
        .then((value) => UserModel.fromJson(value));
  }

  ///Verifies the phone number to check if any account is linked to the number.
  Future<bool> verifyPhone(String number) {
    return _client.getRequest('/veify_phone',
        parameters: {"phone": number}).then((value) => value['data']);
  }

  ///Logs a user into session
  Future<UserModel?> login({
    required String number,
    required String password,
    String? firebaseId,
  }) {
    Map<String, dynamic> parameters = {
      "mobile": number,
      "password": password,
      "firebase_id": firebaseId
    };
    return _client.getRequest('/login', parameters: parameters).then((value) {
      print(value['data']);
      print(value['data'] != false);
      if (value['data'] != false) {
        print('inside this');
        return UserModel.fromJson(value['data']);
      } else {
        print('outside');
        return null;
      }
    });
  }

  ///Sets a token to the https client
  void setToken(String token) => _client.addAuthorization(token);

  ///Sends a generated OTP to be send back via sms
  void sendOTP(String number, String signature, int otp) {
    Map<String, dynamic> parameters = {
      "phone": number,
      "appSign": signature,
      "otp": otp
    };
    _client.getRequest('/send_otp', parameters: parameters);
  }

  ///Registers a user and Logs him into session
  Future<UserModel?> register({
    required String name,
    required String number,
    required String password,
    String? firebaseId,
    String? referredLink,
    String? referalId,
  }) {
    Map<String, dynamic> parameters = {
      "full_name": name,
      "phone": number,
      "password": password,
      "firebase_id": firebaseId,
      "referalId": referalId,
      "referedLink": referredLink
    };
    return _client
        .getRequest('/registration', parameters: parameters)
        .then((value) => UserModel.fromJson(value['data']));
  }

  ///Fetch the home screen data.
  Future<HomePageModel> fetchHomePageData() {
    Map<String, dynamic> parameters = {"franchiseId": 2};
    return _client
        .getRequest('/home_page', parameters: parameters)
        .then((response) => HomePageModel.fromJson(response['data']));
  }

  Future<List<ItemModel>> fetchCategoryItemsData(int categoryId) {
    Map<String, dynamic> parameters = {"category_id": categoryId};
    return _client
        .getRequest('/category_items', parameters: parameters)
        .then((response) {
      List<ItemModel> items = [];
      response["data"].forEach((item) => items.add(ItemModel.fromJson(item)));
      return items;
    });
  }
}
