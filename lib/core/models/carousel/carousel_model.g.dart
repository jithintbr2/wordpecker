// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarouselModel _$_$_CarouselModelFromJson(Map<String, dynamic> json) {
  return _$_CarouselModel(
    id: json['id'] as int?,
    shopId: json['shopId'] as int?,
    itemId: json['itemId'] as int?,
    imageUrl: json['imageUrl'] as String,
    aspectRatio: (json['aspectRatio'] as num?)?.toDouble(),
    externalLink: json['externalLink'] as String?,
  );
}

Map<String, dynamic> _$_$_CarouselModelToJson(_$_CarouselModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shopId': instance.shopId,
      'itemId': instance.itemId,
      'imageUrl': instance.imageUrl,
      'aspectRatio': instance.aspectRatio,
      'externalLink': instance.externalLink,
    };
