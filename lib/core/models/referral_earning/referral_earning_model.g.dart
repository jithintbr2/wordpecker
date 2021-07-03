// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_earning_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReferralEarningModel _$_$_ReferralEarningModelFromJson(
    Map<String, dynamic> json) {
  return _$_ReferralEarningModel(
    id: json['id'] as int,
    customerName: json['customerName'] as String,
    joinedDate: json['joinedDate'] as String,
    earnings: (json['earnings'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_ReferralEarningModelToJson(
        _$_ReferralEarningModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerName': instance.customerName,
      'joinedDate': instance.joinedDate,
      'earnings': instance.earnings,
    };
