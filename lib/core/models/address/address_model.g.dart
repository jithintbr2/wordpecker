// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$_$_AddressModelFromJson(Map<String, dynamic> json) {
  return _$_AddressModel(
    id: json['id'] as int,
    house: json['house'] as String,
    locality: json['locality'] as String,
    pin: json['pin'] as int,
    lat: (json['lat'] as num).toDouble(),
    lng: (json['lng'] as num).toDouble(),
    nickName: json['nickName'] as String,
    franchiseId: json['franchiseId'] as int,
  );
}

Map<String, dynamic> _$_$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'house': instance.house,
      'locality': instance.locality,
      'pin': instance.pin,
      'lat': instance.lat,
      'lng': instance.lng,
      'nickName': instance.nickName,
      'franchiseId': instance.franchiseId,
    };
