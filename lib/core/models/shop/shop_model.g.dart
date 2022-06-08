// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopModel _$_$_ShopModelFromJson(Map<String, dynamic> json) {
  return _$_ShopModel(
    shopId: json['id'] as int,
    shopName: json['shopName'] as String,
    imageUrl: json['imgUrl'] as String,
    servicesNow: json['servicesNow'] as bool? ?? false,
    services:
        (json['services'] as List<dynamic>?)?.map((e) => e as String).toList(),
    ratingCount: json['ratingCount'] as int? ?? 0,
    rating: (json['rating'] as num?)?.toDouble() ?? 0,
    category: (json['category'] as List<dynamic>?)
        ?.map((e) => MenuModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    slider:
        (json['slider'] as List<dynamic>?)?.map((e) => e as String).toList(),
    message: json['scrollingMessage'] as String?,
    openingTime: json['openingTime'] as String?,
    description: json['description'] as String?,
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$_$_ShopModelToJson(_$_ShopModel instance) =>
    <String, dynamic>{
      'id': instance.shopId,
      'shopName': instance.shopName,
      'imgUrl': instance.imageUrl,
      'servicesNow': instance.servicesNow,
      'services': instance.services,
      'ratingCount': instance.ratingCount,
      'rating': instance.rating,
      'category': instance.category,
      'slider': instance.slider,
      'scrollingMessage': instance.message,
      'openingTime': instance.openingTime,
      'description': instance.description,
      'type': instance.type,
    };
