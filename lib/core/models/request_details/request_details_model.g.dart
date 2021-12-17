// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestDetailsModel _$_$_RequestDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestDetailsModel(
    request_id: json['request_id'] as int,
    request_date: json['request_date'] as String,
    request_time: json['request_time'] as String,
    status: json['status'] as String,
    remarks: json['remarks'] as String,
    completed: json['completed'] as bool,
    items: (json['items'] as List<dynamic>)
        .map((e) => RequestDetailsItemModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    imageUrl:
        (json['imageUrl'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_RequestDetailsModelToJson(
        _$_RequestDetailsModel instance) =>
    <String, dynamic>{
      'request_id': instance.request_id,
      'request_date': instance.request_date,
      'request_time': instance.request_time,
      'status': instance.status,
      'remarks': instance.remarks,
      'completed': instance.completed,
      'items': instance.items,
      'imageUrl': instance.imageUrl,
    };

_$_RequestDetailsItemModel _$_$_RequestDetailsItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestDetailsItemModel(
    detail_id: json['detail_id'] as int,
    master_id: json['master_id'] as int,
    item: json['item'] as String,
    qty: json['qty'] as int,
  );
}

Map<String, dynamic> _$_$_RequestDetailsItemModelToJson(
        _$_RequestDetailsItemModel instance) =>
    <String, dynamic>{
      'detail_id': instance.detail_id,
      'master_id': instance.master_id,
      'item': instance.item,
      'qty': instance.qty,
    };
