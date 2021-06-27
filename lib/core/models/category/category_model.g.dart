// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$_$_CategoryModelFromJson(Map<String, dynamic> json) {
  return _$_CategoryModel(
    id: json['id'] as int,
    title: json['categoryName'] as String,
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$_$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryName': instance.title,
      'imageUrl': instance.imageUrl,
    };
