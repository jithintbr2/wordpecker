// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemModel _$_$_ItemModelFromJson(Map<String, dynamic> json) {
  return _$_ItemModel(
    id: json['itemId'] as int,
    image: json['itemImage'] as String,
    name: json['itemName'] as String,
    varients: (json['itemVarients'] as List<dynamic>)
        .map((e) => ItemVarientModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ItemModelToJson(_$_ItemModel instance) =>
    <String, dynamic>{
      'itemId': instance.id,
      'itemImage': instance.image,
      'itemName': instance.name,
      'itemVarients': instance.varients,
    };
