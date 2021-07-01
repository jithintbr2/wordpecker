// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_reward_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletRewardModel _$_$_WalletRewardModelFromJson(Map<String, dynamic> json) {
  return _$_WalletRewardModel(
    id: json['id'] as int,
    point: json['point'] as int,
    dateCreate: json['dateCreate'] as String,
    description: json['description'] as String,
    isOpen: json['isOpen'] as bool,
    scratched: json['scratched'] as bool,
  );
}

Map<String, dynamic> _$_$_WalletRewardModelToJson(
        _$_WalletRewardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'point': instance.point,
      'dateCreate': instance.dateCreate,
      'description': instance.description,
      'isOpen': instance.isOpen,
      'scratched': instance.scratched,
    };
