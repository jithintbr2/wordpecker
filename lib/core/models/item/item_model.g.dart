// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemModel _$_$_ItemModelFromJson(Map<String, dynamic> json) {
  return _$_ItemModel(
    id: json['id'] as int,
    image: json['image'] as String,
    name: json['name'] as String,
    description: json['description'] as String?,
    salePrice: (json['salePrice'] as num?)?.toDouble(),
    mrp: (json['mrp'] as num).toDouble(),
    maxQuantity: json['maxQuantity'] as int?,
  );
}

Map<String, dynamic> _$_$_ItemModelToJson(_$_ItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'salePrice': instance.salePrice,
      'mrp': instance.mrp,
      'maxQuantity': instance.maxQuantity,
    };
