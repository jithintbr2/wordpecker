// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReferralModel _$_$_ReferralModelFromJson(Map<String, dynamic> json) {
  return _$_ReferralModel(
    walletBalance: (json['walletBalance'] as num).toDouble(),
    referralLink: json['referralLink'] as String,
    referralCode: json['referralCode'] as String,
    conditionTitle: json['conditionTitle'] as String,
    conditions:
        (json['conditions'] as List<dynamic>).map((e) => e as String).toList(),
    shareMessage: json['shareMessage'] as String,
    myEarnings: (json['myEarnings'] as List<dynamic>)
        .map((e) => ReferralEarningModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ReferralModelToJson(_$_ReferralModel instance) =>
    <String, dynamic>{
      'walletBalance': instance.walletBalance,
      'referralLink': instance.referralLink,
      'referralCode': instance.referralCode,
      'conditionTitle': instance.conditionTitle,
      'conditions': instance.conditions,
      'shareMessage': instance.shareMessage,
      'myEarnings': instance.myEarnings,
    };
