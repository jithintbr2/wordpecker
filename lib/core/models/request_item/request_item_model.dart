import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'request_item_model.freezed.dart';
part 'request_item_model.g.dart';

@freezed
class RequestItemModel with _$RequestItemModel {
  const factory RequestItemModel({
    required int request_id,
    required String request_date,
    required String request_time,
    required String status,
    required bool completed,
    required int items,
  }) = _RequestItemModel;

  factory RequestItemModel.fromJson(Map<String, dynamic> json) =>
      _$RequestItemModelFromJson(json);
}
