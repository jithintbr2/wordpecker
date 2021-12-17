// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestItemModel _$_$_RequestItemModelFromJson(Map<String, dynamic> json) {
  return _$_RequestItemModel(
    request_id: json['request_id'] as int,
    request_date: json['request_date'] as String,
    request_time: json['request_time'] as String,
    status: json['status'] as String,
    completed: json['completed'] as bool,
    items: json['items'] as int,
  );
}

Map<String, dynamic> _$_$_RequestItemModelToJson(
        _$_RequestItemModel instance) =>
    <String, dynamic>{
      'request_id': instance.request_id,
      'request_date': instance.request_date,
      'request_time': instance.request_time,
      'status': instance.status,
      'completed': instance.completed,
      'items': instance.items,
    };
