import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';

part 'api_response.freezed.dart';

@freezed
abstract class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success({required T data}) = Success<T>;

  const factory ApiResponse.failure({required NetworkExceptions error}) =
      Failure<T>;
}
