import 'package:dio/dio.dart';
import 'package:woodle/core/settings/config.dart';

class HttpService {
  late Dio _dio;

  HttpService() {
    _dio = Dio(BaseOptions(baseUrl: Config.apiBaseUrl));
    initializeInterceptors();
  }

  void addHeader(Map<String, dynamic> headers) {
    _dio.options.headers = headers;
  }

  void addAuthorization(String token) =>
      _dio.options.headers["Authorization"] = token;

  Future<dynamic> getRequest(String endPoint,
      {Map<String, dynamic>? parameters}) async {
    if (_dio.options.headers["Authorization"] != null) {
      if (parameters != null)
        parameters['token'] = _dio.options.headers["Authorization"];
      else
        parameters = {'token': _dio.options.headers["Authorization"]};
    }
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
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      print("${options.method} ${options.path}");
      return handler.next(options);
    }, onResponse: (response, handler) {
      print("${response.data}");
      return handler.next(response);
    }, onError: (error, handler) {
      print(error.message);
      return handler.next(error);
    }));
  }
}
