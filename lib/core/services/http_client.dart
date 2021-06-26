import 'package:dio/dio.dart';

class HttpService {
  late Dio _dio;

  HttpService() {
    _dio = Dio(BaseOptions(
        baseUrl:
            "https://woodle.in/delvento/index.php/User_mobile_version_nine"));
    // initializeInterceptors();
  }

  void addHeader(Map<String, dynamic> headers) {
    _dio.options.headers = headers;
  }

  Future<dynamic> getRequest(String endPoint,
      {Map<String, dynamic>? parameters}) async {
    Response response;
    try {
      response = await _dio.get(endPoint, queryParameters: parameters);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response.data;
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(onError: (error, _) {
      print(error.message);
    }, onRequest: (request, _) {
      print("${request.method} ${request.path}");
    }, onResponse: (response, _) {
      print("${response.data}");
    }));
  }
}
