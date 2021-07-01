import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;
  const factory NetworkExceptions.serverError() = ServerError;
  const factory NetworkExceptions.unAuthorized() = UnAuthorized;
  const factory NetworkExceptions.defaultError() = DefaultError;
  const factory NetworkExceptions.formatError() = FormatError;

  static NetworkExceptions handleResponse(int statusCode) {
    switch (statusCode) {
      case 400:
        return NetworkExceptions.unAuthorized();
      case 500:
        return NetworkExceptions.serverError();
      default:
        return NetworkExceptions.defaultError();
    }
  }

  static NetworkExceptions getDioExceptions(error) {
    if (error is Exception) {
      try {
        late NetworkExceptions networkExceptions;
        if (error is DioError) {
          if (error.type == DioErrorType.response)
            networkExceptions =
                NetworkExceptions.handleResponse(error.response!.statusCode!);
          else if (error.message.contains('SocketException'))
            networkExceptions = NetworkExceptions.noInternetConnection();
        } else if (error is SocketException)
          networkExceptions = NetworkExceptions.noInternetConnection();
        else
          networkExceptions = NetworkExceptions.defaultError();
        return networkExceptions;
      } on FormatException catch (_) {
        return NetworkExceptions.formatError();
      } catch (_) {
        return NetworkExceptions.defaultError();
      }
    }

    return NetworkExceptions.defaultError();
  }
}
