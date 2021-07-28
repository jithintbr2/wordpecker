// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubCategoryModel _$_$_SubCategoryModelFromJson(Map<String, dynamic> json) {
  return _$_SubCategoryModel(
    id: json['sub_cat_id'] as int,
    name: json['sub_cat_name'] as String,
    items: (json['items'] as List<dynamic>)
        .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SubCategoryModelToJson(
        _$_SubCategoryModel instance) =>
    <String, dynamic>{
      'sub_cat_id': instance.id,
      'sub_cat_name': instance.name,
      'items': instance.items,
    };
