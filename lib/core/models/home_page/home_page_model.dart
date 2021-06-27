import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:woodle/core/models/carousel/carousel_model.dart';
import 'package:woodle/core/models/category/category_model.dart';

part 'home_page_model.freezed.dart';
part 'home_page_model.g.dart';

@freezed
class HomePageModel with _$HomePageModel {
  const factory HomePageModel({
    @JsonKey(name: 'offers') List<CarouselModel>? carouselx1,
    @JsonKey(name: 'ad1') List<CarouselModel>? carouselx2,
    @JsonKey(name: 'ad2') List<CarouselModel>? carouselx3,
    @JsonKey(name: 'ad3') List<CarouselModel>? carouselx4,
    @JsonKey(name: 'categories') List<CategoryModel>? categories,
    @JsonKey(name: 'scrollingMessage') String? message,
    @JsonKey(name: 'minimum_order_cost') double? minOrderCost,
  }) = _HomePageModel;

  factory HomePageModel.fromJson(Map<String, dynamic> json) =>
      _$HomePageModelFromJson(json);
}
