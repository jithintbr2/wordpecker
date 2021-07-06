// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_varient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemVarientModel _$_$_ItemVarientModelFromJson(Map<String, dynamic> json) {
  return _$_ItemVarientModel(
    varientId: json['varientId'] as int,
    varientType: json['varientType'] as String,
    varientName: json['varientName'] as String,
    itemName: json['itemName'] as String,
    shopId: json['shopId'] as int,
    image: json['imgUrl'] as String,
    description: json['description'] as String?,
    salePrice: (json['itemCost'] as num?)?.toDouble(),
    mrp: (json['mrp'] as num).toDouble(),
    maxQuantity: json['maxQuantity'] as int?,
    itemImages: (json['itemImages'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_ItemVarientModelToJson(
        _$_ItemVarientModel instance) =>
    <String, dynamic>{
      'varientId': instance.varientId,
      'varientType': instance.varientType,
      'varientName': instance.varientName,
      'itemName': instance.itemName,
      'shopId': instance.shopId,
      'imgUrl': instance.image,
      'description': instance.description,
      'itemCost': instance.salePrice,
      'mrp': instance.mrp,
      'maxQuantity': instance.maxQuantity,
      'itemImages': instance.itemImages,
    };
