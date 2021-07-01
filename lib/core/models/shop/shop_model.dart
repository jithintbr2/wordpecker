import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/menu/menu_model.dart';

part 'shop_model.freezed.dart';
part 'shop_model.g.dart';

@freezed
class ShopModel with _$ShopModel {
  const factory ShopModel({
    required int id,
    required String name,
    String? image,
    @JsonKey(defaultValue: false) bool? serviceAvailable,
    List<String>? services,
    @JsonKey(defaultValue: 0) int? ratingCount,
    @JsonKey(defaultValue: 0) double? rating,
    MenuModel? menu,
  }) = _ShopModel;

  factory ShopModel.fromJson(Map<String, dynamic> json) =>
      _$ShopModelFromJson(json);
}
