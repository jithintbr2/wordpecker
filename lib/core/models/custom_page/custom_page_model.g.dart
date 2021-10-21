// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomPageModel _$_$_CustomPageModelFromJson(Map<String, dynamic> json) {
  return _$_CustomPageModel(
    carouselx1: (json['offers'] as List<dynamic>?)
        ?.map((e) => CarouselModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    carouselx2: (json['ad1'] as List<dynamic>?)
        ?.map((e) => CarouselModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    carouselx3: (json['ad2'] as List<dynamic>?)
        ?.map((e) => CarouselModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    carouselx4: (json['ad3'] as List<dynamic>?)
        ?.map((e) => CarouselModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    message: json['scrollingMessage'] as String?,
    shops: (json['shops'] as List<dynamic>?)
        ?.map((e) => ShopModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CustomPageModelToJson(_$_CustomPageModel instance) =>
    <String, dynamic>{
      'offers': instance.carouselx1,
      'ad1': instance.carouselx2,
      'ad2': instance.carouselx3,
      'ad3': instance.carouselx4,
      'scrollingMessage': instance.message,
      'shops': instance.shops,
    };
