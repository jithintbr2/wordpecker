// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletModel _$_$_WalletModelFromJson(Map<String, dynamic> json) {
  return _$_WalletModel(
    walletBalance: (json['wallet_balance'] as num).toDouble(),
    rewardDetails: (json['reward_details'] as List<dynamic>)
        .map((e) => WalletRewardModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_WalletModelToJson(_$_WalletModel instance) =>
    <String, dynamic>{
      'wallet_balance': instance.walletBalance,
      'reward_details': instance.rewardDetails,
    };
