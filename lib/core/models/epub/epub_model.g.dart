// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epub_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EPubModel _$_$_EPubModelFromJson(Map<String, dynamic> json) {
  return _$_EPubModel(
    itemId: json['itemId'] as int,
    pubId: json['pubId'] as int,
    fileName: json['fileName'] as String,
    image: json['image'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_EPubModelToJson(_$_EPubModel instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'pubId': instance.pubId,
      'fileName': instance.fileName,
      'image': instance.image,
      'name': instance.name,
    };
