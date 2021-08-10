// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceModel _$_$_ServiceModelFromJson(Map<String, dynamic> json) {
  return _$_ServiceModel(
    id: json['id'] as int,
    serviceName: json['serviceName'] as String,
    description: json['description'] as String,
    imageUrl: json['image_url'] as String,
  );
}

Map<String, dynamic> _$_$_ServiceModelToJson(_$_ServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceName': instance.serviceName,
      'description': instance.description,
      'image_url': instance.imageUrl,
    };
