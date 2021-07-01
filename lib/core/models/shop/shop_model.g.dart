// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopModel _$_$_ShopModelFromJson(Map<String, dynamic> json) {
  return _$_ShopModel(
    id: json['id'] as int,
    name: json['name'] as String,
    image: json['image'] as String?,
    serviceAvailable: json['serviceAvailable'] as bool? ?? false,
    services:
        (json['services'] as List<dynamic>?)?.map((e) => e as String).toList(),
    ratingCount: json['ratingCount'] as int? ?? 0,
    rating: (json['rating'] as num?)?.toDouble() ?? 0,
    menu: json['menu'] == null
        ? null
        : MenuModel.fromJson(json['menu'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ShopModelToJson(_$_ShopModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'serviceAvailable': instance.serviceAvailable,
      'services': instance.services,
      'ratingCount': instance.ratingCount,
      'rating': instance.rating,
      'menu': instance.menu,
    };
