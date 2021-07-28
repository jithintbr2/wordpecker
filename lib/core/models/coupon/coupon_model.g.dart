// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CouponModel _$_$_CouponModelFromJson(Map<String, dynamic> json) {
  return _$_CouponModel(
    couponId: json['couponId'] as int,
    couponCode: json['couponCode'] as String,
    couponDescription: json['couponDescription'] as String,
    couponType: json['couponType'] as String,
    couponDiscount: (json['couponDiscount'] as num).toDouble(),
    validFrom: json['validFrom'] as String,
    validTo: json['validTo'] as String,
    status: json['status'] as bool,
  );
}

Map<String, dynamic> _$_$_CouponModelToJson(_$_CouponModel instance) =>
    <String, dynamic>{
      'couponId': instance.couponId,
      'couponCode': instance.couponCode,
      'couponDescription': instance.couponDescription,
      'couponType': instance.couponType,
      'couponDiscount': instance.couponDiscount,
      'validFrom': instance.validFrom,
      'validTo': instance.validTo,
      'status': instance.status,
    };
