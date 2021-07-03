import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    @JsonKey(name: "itemId") required int id,
    @JsonKey(name: "itemImage") required String image,
    @JsonKey(name: "itemName") required String name,
    @JsonKey(name: "itemVarients") required List<ItemVarientModel> varients,
    // String? description,
    // double? salePrice,
    // required double mrp,
    // int? maxQuantity,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}
