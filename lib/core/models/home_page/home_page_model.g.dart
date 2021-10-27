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
    minOrderCost: (json['maxLimit'] as num?)?.toDouble(),
    homeCategoreis: (json['homeCategoreis'] as List<dynamic>?)
        ?.map((e) => HomeCategoriesModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    featuredRestaurants: (json['featuredRestaurants'] as List<dynamic>?)
        ?.map((e) => ShopModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    contactNumber: json['contactNumber'] as int?,
    isPendingOrders: json['isPendingOrders'] as bool,
    popupImage: json['popupImage'] as String?,
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
      'maxLimit': instance.minOrderCost,
      'homeCategoreis': instance.homeCategoreis,
      'featuredRestaurants': instance.featuredRestaurants,
      'contactNumber': instance.contactNumber,
      'isPendingOrders': instance.isPendingOrders,
      'popupImage': instance.popupImage,
    };

_$_HomeCategoriesModel _$_$_HomeCategoriesModelFromJson(
    Map<String, dynamic> json) {
  return _$_HomeCategoriesModel(
    catId: json['catId'] as int,
    categoryName: json['categoryName'] as String,
    itemVarients: (json['itemVarients'] as List<dynamic>)
        .map((e) => ItemVarientModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_HomeCategoriesModelToJson(
        _$_HomeCategoriesModel instance) =>
    <String, dynamic>{
      'catId': instance.catId,
      'categoryName': instance.categoryName,
      'itemVarients': instance.itemVarients,
    };
