// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailStepModel _$_$_OrderDetailStepModelFromJson(
    Map<String, dynamic> json) {
  return _$_OrderDetailStepModel(
    step: json['step'] as int,
    key: json['key'] as String,
    status: json['status'] as String,
    completed: json['completed'] as bool,
    statusTime: json['statusTime'] as String,
  );
}

Map<String, dynamic> _$_$_OrderDetailStepModelToJson(
        _$_OrderDetailStepModel instance) =>
    <String, dynamic>{
      'step': instance.step,
      'key': instance.key,
      'status': instance.status,
      'completed': instance.completed,
      'statusTime': instance.statusTime,
    };
