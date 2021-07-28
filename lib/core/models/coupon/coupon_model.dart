import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'coupon_model.freezed.dart';
part 'coupon_model.g.dart';

@freezed
class CouponModel with _$CouponModel {
  const factory CouponModel({
    required int couponId,
    required String couponCode,
    required String couponDescription,
    required String couponType,
    required double couponDiscount,
    required String validFrom,
    required String validTo,
    required bool status,
  }) = _CouponModel;

  factory CouponModel.fromJson(Map<String, dynamic> json) =>
      _$CouponModelFromJson(json);
}
