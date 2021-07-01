import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required int id,
    @JsonKey(defaultValue: '') String? title,
    @JsonKey(defaultValue: '') String? message,
    required String typeName,
    required bool isRead,
    required int detailId,
    required String sentDate,
    required String sentTime,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
