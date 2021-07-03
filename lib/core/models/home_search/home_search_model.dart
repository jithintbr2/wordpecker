import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:woodle/core/models/carousel/carousel_model.dart';
import 'package:woodle/core/models/category/category_model.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';

part 'home_search_model.freezed.dart';
part 'home_search_model.g.dart';

@freezed
class HomeSearchModel with _$HomeSearchModel {
  const factory HomeSearchModel({
    required List<ItemModel> items,
    required List<ShopModel> shops,
  }) = _HomeSearchModel;

  factory HomeSearchModel.fromJson(Map<String, dynamic> json) =>
      _$HomeSearchModelFromJson(json);
}
