import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:woodle/core/models/carousel/carousel_model.dart';
import 'package:woodle/core/models/category/category_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';

part 'home_page_model.freezed.dart';
part 'home_page_model.g.dart';

@freezed
class HomePageModel with _$HomePageModel {
  const factory HomePageModel({
    @JsonKey(name: 'offers') List<CarouselModel>? carouselx1,
    @JsonKey(name: 'ad1') List<CarouselModel>? carouselx2,
    @JsonKey(name: 'ad2') List<CarouselModel>? carouselx3,
    @JsonKey(name: 'ad3') List<CarouselModel>? carouselx4,
    List<CategoryModel>? itemCategories,
    List<CategoryModel>? shopCategories,
    @JsonKey(name: 'scrollingMessage') String? message,
    @JsonKey(name: 'minimum_order_cost') double? minOrderCost,
    HomeCategoriesModel? homeCategoreis,
  }) = _HomePageModel;

  factory HomePageModel.fromJson(Map<String, dynamic> json) =>
      _$HomePageModelFromJson(json);
}

@freezed
class HomeCategoriesModel with _$HomeCategoriesModel {
  const factory HomeCategoriesModel({
    required int catId,
    required String categoryName,
    required List<ItemVarientModel> itemVarients,
  }) = _HomeCategoriesModel;

  factory HomeCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$HomeCategoriesModelFromJson(json);
}
