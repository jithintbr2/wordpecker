// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomePageModel _$_$_HomePageModelFromJson(Map<String, dynamic> json) {
  return _$_HomePageModel(
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
    itemCategories: (json['itemCategories'] as List<dynamic>?)
        ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    shopCategories: (json['shopCategories'] as List<dynamic>?)
        ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    message: json['scrollingMessage'] as String?,
    minOrderCost: (json['minimum_order_cost'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_HomePageModelToJson(_$_HomePageModel instance) =>
    <String, dynamic>{
      'offers': instance.carouselx1,
      'ad1': instance.carouselx2,
      'ad2': instance.carouselx3,
      'ad3': instance.carouselx4,
      'itemCategories': instance.itemCategories,
      'shopCategories': instance.shopCategories,
      'scrollingMessage': instance.message,
      'minimum_order_cost': instance.minOrderCost,
    };
