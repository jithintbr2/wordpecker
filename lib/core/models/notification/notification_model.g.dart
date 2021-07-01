// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$_$_NotificationModelFromJson(Map<String, dynamic> json) {
  return _$_NotificationModel(
    id: json['id'] as int,
    title: json['title'] as String? ?? '',
    message: json['message'] as String? ?? '',
    typeName: json['typeName'] as String,
    isRead: json['isRead'] as bool,
    detailId: json['detailId'] as int,
    sentDate: json['sentDate'] as String,
    sentTime: json['sentTime'] as String,
  );
}

Map<String, dynamic> _$_$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'typeName': instance.typeName,
      'isRead': instance.isRead,
      'detailId': instance.detailId,
      'sentDate': instance.sentDate,
      'sentTime': instance.sentTime,
    };
