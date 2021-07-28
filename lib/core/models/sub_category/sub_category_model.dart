import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:woodle/core/models/item/item_model.dart';

part 'sub_category_model.freezed.dart';
part 'sub_category_model.g.dart';

@freezed
class SubCategoryModel with _$SubCategoryModel {
  const factory SubCategoryModel({
    @JsonKey(name: "sub_cat_id") required int id,
    @JsonKey(name: "sub_cat_name") required String name,
    required List<ItemModel> items,
  }) = _SubCategoryModel;

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryModelFromJson(json);
}
