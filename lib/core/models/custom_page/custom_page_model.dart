import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/carousel/carousel_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';

part 'custom_page_model.freezed.dart';
part 'custom_page_model.g.dart';

@freezed
class CustomPageModel with _$CustomPageModel {
  const factory CustomPageModel({
    @JsonKey(name: 'offers') List<CarouselModel>? carouselx1,
    @JsonKey(name: 'ad1') List<CarouselModel>? carouselx2,
    @JsonKey(name: 'ad2') List<CarouselModel>? carouselx3,
    @JsonKey(name: 'ad3') List<CarouselModel>? carouselx4,
    @JsonKey(name: 'scrollingMessage') String? message,
    List<ShopModel>? shops,
  }) = _CustomPageModel;

  factory CustomPageModel.fromJson(Map<String, dynamic> json) =>
      _$CustomPageModelFromJson(json);
}
