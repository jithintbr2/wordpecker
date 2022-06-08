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
    itemId: json['itemId'] as int,
    shopId: json['shopId'] as int,
    shopName: json['shopName'] as String,
    tag: json['tag'] as String?,
    image: json['imgUrl'] as String,
    description: json['description'] as String?,
    salePrice: (json['itemCost'] as num?)?.toDouble(),
    mrp: (json['mrp'] as num).toDouble(),
    maxQuantity: json['maxQuantity'] as int?,
    itemImages: (json['itemImages'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    aspectRatio: (json['aspectRatio'] as num?)?.toDouble() ?? 1,
    authorName: json['authorName'] as String?,
    language: json['language'] as String?,
    bindingType: json['bindingType'] as String?,
    isbn: json['isbn'] as String?,
    edition: json['edition'] as String?,
    noOfPages: json['noOfPages'] as String?,
    publishingDate: json['publishingDate'] as String?,
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_ItemVarientModelToJson(
        _$_ItemVarientModel instance) =>
    <String, dynamic>{
      'varientId': instance.varientId,
      'varientType': instance.varientType,
      'varientName': instance.varientName,
      'itemName': instance.itemName,
      'itemId': instance.itemId,
      'shopId': instance.shopId,
      'shopName': instance.shopName,
      'tag': instance.tag,
      'imgUrl': instance.image,
      'description': instance.description,
      'itemCost': instance.salePrice,
      'mrp': instance.mrp,
      'maxQuantity': instance.maxQuantity,
      'itemImages': instance.itemImages,
      'aspectRatio': instance.aspectRatio,
      'authorName': instance.authorName,
      'language': instance.language,
      'bindingType': instance.bindingType,
      'isbn': instance.isbn,
      'edition': instance.edition,
      'noOfPages': instance.noOfPages,
      'publishingDate': instance.publishingDate,
      'categories': instance.categories,
    };
