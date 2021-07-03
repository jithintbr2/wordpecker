import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/menu/menu_model.dart';

part 'shop_model.freezed.dart';
part 'shop_model.g.dart';

@freezed
class ShopModel with _$ShopModel {
  const factory ShopModel({
    @JsonKey(name: 'id') required int shopId,
    required String shopName,
    @JsonKey(name: 'imgUrl') required String imageUrl,
    @JsonKey(defaultValue: false) bool? servicesNow,
    List<String>? services,
    @JsonKey(defaultValue: 0) int? ratingCount,
    @JsonKey(defaultValue: 0) double? rating,
    List<MenuModel>? category,
    List<String>? slider,
  }) = _ShopModel;

  factory ShopModel.fromJson(Map<String, dynamic> json) =>
      _$ShopModelFromJson(json);
}
