// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PushNotificationModel _$_$_PushNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _$_PushNotificationModel(
    title: json['title'] as String?,
    message: json['message'] as String?,
    type: json['type'] as String?,
    image: json['image'] as String?,
    notificationId: json['notificationId'] as int?,
    detailId: json['detailId'] as int?,
    detailParentId: json['detailParentId'] as int?,
  );
}

Map<String, dynamic> _$_$_PushNotificationModelToJson(
        _$_PushNotificationModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
      'type': instance.type,
      'image': instance.image,
      'notificationId': instance.notificationId,
      'detailId': instance.detailId,
      'detailParentId': instance.detailParentId,
    };
