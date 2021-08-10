import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'item_varient_model.freezed.dart';
part 'item_varient_model.g.dart';

@freezed
class ItemVarientModel with _$ItemVarientModel {
  const factory ItemVarientModel({
    required int varientId,
    required String varientType,
    required String varientName,
    required String itemName,
    required int itemId,
    required int shopId,
    required String shopName,
    @JsonKey(name: "imgUrl") required String image,
    String? description,
    @JsonKey(name: "itemCost") double? salePrice,
    required double mrp,
    int? maxQuantity,
    @JsonKey(defaultValue: []) List<String>? itemImages,
    @JsonKey(defaultValue: 1) double? aspectRatio,
  }) = _ItemVarientModel;

  factory ItemVarientModel.fromJson(Map<String, dynamic> json) =>
      _$ItemVarientModelFromJson(json);
}
