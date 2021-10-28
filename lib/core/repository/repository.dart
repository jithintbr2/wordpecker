import 'package:flutter_uploader/flutter_uploader.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:version/version.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/app_version/app_verification_model.dart';
import 'package:woodle/core/models/app_version/app_version_model.dart';
import 'package:woodle/core/models/coupon/coupon_model.dart';
import 'package:woodle/core/models/custom_page/custom_page_model.dart';
import 'package:woodle/core/models/home_page/home_page_model.dart';
import 'package:woodle/core/models/home_search/home_search_model.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/notification/notification_model.dart';
import 'package:woodle/core/models/order_details/order_details_model.dart';
import 'package:woodle/core/models/order_preview/order_preview_model.dart';
import 'package:woodle/core/models/orders/orders_model.dart';
import 'package:woodle/core/models/referral/referral_model.dart';
import 'package:woodle/core/models/service/service_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/models/shop_review/shop_review_model.dart';
import 'package:woodle/core/models/sub_category/sub_category_model.dart';
import 'package:woodle/core/models/user/user_model.dart';
import 'package:woodle/core/models/wallet/wallet_model.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/services/http_client.dart';
import 'package:woodle/core/settings/config.dart';

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
        .getRequest('/check_token_valid', parameters: parameters)
        .then((value) {
      if (value['data'] != null)
        return UserModel.fromJson(value['data']);
      else
        return null;
    });
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

  Future<ApiResponse<bool>> logout(String? firebaseId) {
    Map<String, dynamic> parameters = {"firebaseId": firebaseId};
    return _client
        .getRequest('/logout', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as bool))
        .onError((error, _) => ApiResponse.failure(
            error: NetworkExceptions.getDioExceptions(error)));
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
  Future<ApiResponse<HomePageModel>> fetchHomePageData(int franchiseId) {
    Map<String, dynamic> parameters = {"franchiseId": franchiseId};
    return _client
        .getRequest('/home_page', parameters: parameters)
        .then((response) =>
            ApiResponse.success(data: HomePageModel.fromJson(response['data'])))
        .onError((error, _) => ApiResponse.failure(
            error: NetworkExceptions.getDioExceptions(error)));
  }

  Future<ApiResponse<CustomPageModel>> fetchCustomPageData(int franchiseId) {
    Map<String, dynamic> parameters = {"franchiseId": franchiseId};
    return _client
        .getRequest('/list_shops', parameters: parameters)
        .then((response) => ApiResponse.success(
            data: CustomPageModel.fromJson(response['data'])))
        .onError((error, _) => ApiResponse.failure(
            error: NetworkExceptions.getDioExceptions(error)));
  }

  Future<ApiResponse<List<SubCategoryModel>>> fetchCategoryItemsData(
      int categoryId) {
    Map<String, dynamic> parameters = {"categoryId": categoryId};
    return _client
        .getRequest('/category_items', parameters: parameters)
        .then((response) {
      List<SubCategoryModel> items = [];
      response["data"]
          .forEach((item) => items.add(SubCategoryModel.fromJson(item)));
      return ApiResponse.success(data: items);
    }).onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  ///Fetch User's Saved Addresses
  Future<ApiResponse<List<AddressModel>>> fetchSavedAddress() async {
    return _client.getRequest('/address_list').then((response) {
      List<AddressModel> addresses = [];
      response['data']
          .forEach((address) => addresses.add(AddressModel.fromJson(address)));
      return ApiResponse.success(data: addresses);
    }).onError((error, _) =>
        ApiResponse.failure(error: NetworkExceptions.getDioExceptions(error)));
  }

  ///Delete an address from user's list
  Future<ApiResponse<bool>> deleteSavedAddress(int addressId) async {
    Map<String, dynamic> parameters = {"addressId": addressId};
    return _client
        .getRequest('/delete_address', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] == true))
        .onError((error, _) => ApiResponse.failure(
            error: NetworkExceptions.getDioExceptions(error)));
  }

  ///Check for service availability at a given location
  Future<ApiResponse<int>> checkServiceAvailability(double lat, double lng) {
    Map<String, dynamic> parameters = {"lat": lat, "lng": lng};
    return _client
        .getRequest('/check_availability', parameters: parameters)
        .then((response) {
      return ApiResponse.success(data: response['data']['franchiseId'] as int);
    }).onError((error, _) => ApiResponse.failure(
            error: NetworkExceptions.getDioExceptions(error)));
  }

  //Add address
  Future<ApiResponse<int>> addAddress(String locality, String house,
      String nickName, String pincode, double lat, double lng, int franchieId) {
    Map<String, dynamic> parameters = {
      'locality': locality,
      'house': house,
      'nickname': nickName,
      'pincode': pincode,
      'lat': lat,
      'lng': lng,
      'franchiseId': franchieId
    };
    return _client
        .getRequest('/add_address', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as int))
        .onError((error, _) => ApiResponse.failure(
            error: NetworkExceptions.getDioExceptions(error)));
  }

  ///Fetch the shop list based on categories
  Future<ApiResponse<List<ShopModel>>> fetchShopList(
      int franchiseId, int categoryId) {
    Map<String, dynamic> parameters = {
      "franchiseId": franchiseId,
      "categoryId": categoryId
    };
    return _client
        .getRequest('/list_shops', parameters: parameters)
        .then((response) {
      List<ShopModel> shops = [];
      response['data'].forEach((shop) => shops.add(ShopModel.fromJson(shop)));
      return ApiResponse.success(data: shops);
    }).onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  //Fetch the user's notifications
  Future<ApiResponse<List<NotificationModel>>> fetchNotifications() {
    return _client.getRequest('/list_notification').then((response) {
      List<NotificationModel> notifications = [];
      response['data'].forEach((notification) {
        notifications.add(NotificationModel.fromJson(notification));
      });
      return ApiResponse.success(data: notifications);
    }).onError((error, _) =>
        ApiResponse.failure(error: NetworkExceptions.getDioExceptions(error)));
  }

  ///Fetch the user's order history
  Future<ApiResponse<List<OrdersModel>>> fetchOrderHistroy() {
    return _client.getRequest('/my_orders').then((response) {
      List<OrdersModel> orders = [];
      response['data']
          .forEach((order) => orders.add(OrdersModel.fromJson(order)));
      return ApiResponse.success(data: orders);
    }).onError((error, _) =>
        ApiResponse.failure(error: NetworkExceptions.getDioExceptions(error)));
  }

  ///Fetch Shop Details
  Future<ApiResponse<ShopModel>> fetchShopDetails(int shopId) {
    Map<String, dynamic> parameters = {"shop_id": shopId};
    return _client
        .getRequest('/shop_details', parameters: parameters)
        .then((response) =>
            ApiResponse.success(data: ShopModel.fromJson(response['data'])))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  ///Fetch Shop Reviews
  Future<ApiResponse<ShopReviewModel>> fetchShopReviews(int shopId) {
    Map<String, dynamic> parameters = {"shopId": shopId};
    return _client
        .getRequest('/list_all_reviews', parameters: parameters)
        .then((response) => ApiResponse.success(
            data: ShopReviewModel.fromJson(response['data'])))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  ///Add Shop Reviews
  Future<ApiResponse<bool>> addShopReviews(
      double rating, String? review, int shopId) {
    Map<String, dynamic> parameters = {
      "rating": rating,
      "review": review,
      "shopId": shopId
    };
    return _client
        .getRequest('/add_shop_review', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as bool))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  ///Edit Shop Reviews
  Future<ApiResponse<bool>> editShopReviews(
      double rating, String? review, int reviewId) {
    Map<String, dynamic> parameters = {
      "rating": rating,
      "review": review,
      "reviewId": reviewId
    };
    return _client
        .getRequest('/edit_shop_review', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as bool))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  ///Fetch item Reviews
  Future<ApiResponse<ShopReviewModel>> fetchItemReviews(int itemId) {
    Map<String, dynamic> parameters = {"itemId": itemId};
    return _client
        .getRequest('/list_all_item_reviews', parameters: parameters)
        .then((response) => ApiResponse.success(
            data: ShopReviewModel.fromJson(response['data'])))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  ///Add Item Reviews
  Future<ApiResponse<bool>> addItemReviews(
      double rating, String? review, int itemId) {
    Map<String, dynamic> parameters = {
      "rating": rating,
      "review": review,
      "itemId": itemId
    };
    return _client
        .getRequest('/add_item_review', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as bool))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  ///Edit item Reviews
  Future<ApiResponse<bool>> editItemReviews(
      double rating, String? review, int reviewId) {
    Map<String, dynamic> parameters = {
      "rating": rating,
      "review": review,
      "reviewId": reviewId
    };
    return _client
        .getRequest('/edit_item_review', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as bool))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  ///Fetch Referral Details
  Future<ApiResponse<ReferralModel>> fetchReferralDetails() {
    return _client
        .getRequest('/refer_details')
        .then((response) =>
            ApiResponse.success(data: ReferralModel.fromJson(response['data'])))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  ///Fetch Wallet Details
  Future<ApiResponse<WalletModel>> fetchWalletDetails() {
    return _client
        .getRequest('/wallet_details')
        .then((response) =>
            ApiResponse.success(data: WalletModel.fromJson(response['data'])))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Check Written Coupon
  Future<ApiResponse<CouponOrString>> checkCoupon(
      List items, String couponCode, int shopId, double deliveryCharge) {
    Map<String, dynamic> parameters = {
      "items": items,
      "couponCode": couponCode,
      "shopId": shopId,
      "deliveryCharge": deliveryCharge
    };
    return _client
        .postRequest('/coupon_code_check', parameters: parameters)
        .then((response) => ApiResponse.success(
            data: CouponOrString(
                message: response['message'],
                applicableOn: response['data']['ids'] != null
                    ? response['data']['ids'] as List
                    : [],
                coupon: response['data']['coupon'] != null
                    ? CouponModel.fromJson(response['data']['coupon'])
                    : null)))
        .onError((error, _) {
      print('.....eerorr');
      print(_);
      print('eerorr.....');
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Fetch Order Preview Options and Addons
  Future<ApiResponse<OrderPreviewModel>> fetchOrderPreviewOptions(
      int franchiseId, int addressId, int shopId) {
    Map<String, dynamic> parameters = {
      "addressId": addressId,
      "franchiseId": franchiseId,
      "shopId": shopId
    };
    return _client
        .getRequest('/general_details', parameters: parameters)
        .then((response) => ApiResponse.success(
            data: OrderPreviewModel.fromJson(response['data'])))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Check Cart items validity
  Future<ApiResponse<List>> checkCartValidity(List<int> varientIds) {
    Map<String, dynamic> parameters = {"varientIds": varientIds};
    return _client
        .getRequest('/cart_check', parameters: parameters)
        .then((response) {
      print(response['data']['varientIds']);
      return ApiResponse.success(data: response['data']['varientIds'] as List);
    }).onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Place Order
  Future<ApiResponse<int>> placeOrder(
      List items,
      int shopId,
      int addressId,
      String remark,
      bool isAdvancedOrder,
      String datetime,
      int? couponId,
      double? redeemedAmount,
      double? couponDiscount,
      String? couponType,
      int selectedPaymentMode) {
    Map<String, dynamic> parameters = {
      "items": items,
      "shopId": shopId,
      "addressId": addressId,
      "remarks": remark,
      "couponId": couponId ?? -1,
      "redeemedAmount": redeemedAmount ?? 0.0,
      "couponDiscount": couponDiscount ?? 0.0,
      "couponType": couponType ?? "",
      "advancedOrder": isAdvancedOrder,
      "paymentMode": selectedPaymentMode == 0
          ? "onlinePayment"
          : selectedPaymentMode == 1
              ? "cash_on_delivery"
              : "self_pickup",
      "scheduledDeliveryDateTime": datetime,
      "additionalCharges": []
    };

    print(parameters);
    return _client
        .postRequest('/place_order', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as int))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Search for results from home page searcher
  Future<ApiResponse<HomeSearchModel>> searchItems(
      String searchQuery, int franchiseId) {
    Map<String, dynamic> parameters = {
      "franchiseId": franchiseId,
      "search": searchQuery
    };
    return _client
        .getRequest('/search_all_items', parameters: parameters)
        .then((response) => ApiResponse.success(
            data: HomeSearchModel.fromJson(response['data'])))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Fetch Services
  Future<ApiResponse<List<ServiceModel>>> fetchServices(int franchiseId) {
    Map<String, dynamic> parameters = {"franchiseId": franchiseId};
    return _client
        .getRequest('/list_services', parameters: parameters)
        .then((response) {
      List<ServiceModel> services = [];
      response["data"]
          .forEach((service) => services.add(ServiceModel.fromJson(service)));
      return ApiResponse.success(data: services);
    }).onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Fetch Order Details
  Future<ApiResponse<OrderDetailsModel>> fetchOrderDetails(
      int orderId, int? tempId) {
    Map<String, dynamic> parameters = {"orderId": orderId, "tempId": tempId};
    return _client
        .getRequest('/order_details', parameters: parameters)
        .then((response) => ApiResponse.success(
            data: OrderDetailsModel.fromJson(response['data'])))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Fetch Item Details
  Future<ApiResponse<ItemModel>> fetchItemDetails(int itemId) {
    Map<String, dynamic> parameters = {"itemId": itemId};
    return _client
        .getRequest('/item_details', parameters: parameters)
        .then((response) =>
            ApiResponse.success(data: ItemModel.fromJson(response['data'][0])))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Check Referral Validity
  Future<ApiResponse<bool>> checkReferralValidity(String referralCode) {
    Map<String, dynamic> parameters = {"referalId": referralCode};
    return _client
        .getRequest('/is_referral_id_valid', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as bool))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Cancel Order
  Future<ApiResponse<String>> cancelOrder(int orderId, String? reason) {
    Map<String, dynamic> parameters = {"orderId": orderId, "reason": reason};
    return _client
        .getRequest('/cancel_request', parameters: parameters)
        .then((response) =>
            ApiResponse.success(data: response['message'] as String))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  /// Service Request
  Future<ApiResponse<bool>> requestService(
    int franchiseId,
    int service,
    String jobTitle,
    String jobDescription,
    String preferableDate,
    String time,
  ) {
    Map<String, dynamic> parameters = {
      "franchiseId": franchiseId,
      "service": service,
      "jobTitle": jobTitle,
      "jobDescription": jobDescription,
      "preferableDate": preferableDate,
      "time": time
    };
    return _client
        .getRequest('/add_request_service', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as bool))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  Future<ApiResponse<bool>> changePassword(String password) {
    Map<String, dynamic> parameters = {"password": password};
    return _client
        .getRequest('/change_password', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as bool))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  Future<ApiResponse<bool>> resetPassword(String phone, String password) {
    Map<String, dynamic> parameters = {"password": password, "phone": phone};
    return _client
        .getRequest('/reset_password', parameters: parameters)
        .then((response) => ApiResponse.success(data: response['data'] as bool))
        .onError((error, _) {
      print(_);
      return ApiResponse.failure(
          error: NetworkExceptions.getDioExceptions(error));
    });
  }

  Future<ApiResponse<int>> requestItems(
    List items,
    int franchiseId,
    String remark,
  ) {
    Map<String, dynamic> parameters = {
      "items": items,
      "franchiseId": franchiseId,
      "remark": remark
    };
    return _client.postRequest('/request_item', parameters: parameters).then(
        (response) {
      return ApiResponse.success(data: response['data'] as int);
    }).onError((error, _) =>
        ApiResponse.failure(error: NetworkExceptions.getDioExceptions(error)));
  }

  Upload uploadFile(List<String> paths, int requiredId) {
    final tag = 'upload';
    var url = Config.apiBaseUrl + '/upload_req_item_photo';

    return MultipartFormDataUpload(
      url: url.toString(),
      data: {'requestId': requiredId.toString()},
      files: paths.map((e) => FileItem(path: e, field: 'file')).toList(),
      method: UploadMethod.POST,
      tag: tag,
    );
  }
}
