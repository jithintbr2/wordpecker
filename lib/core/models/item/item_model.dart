import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    required int id,
    required String image,
    required String name,
    String? description,
    double? salePrice,
    required double mrp,
    int? maxQuantity,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}
