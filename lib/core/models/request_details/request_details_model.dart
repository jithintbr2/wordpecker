import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'request_details_model.freezed.dart';
part 'request_details_model.g.dart';

@freezed
class RequestDetailsModel with _$RequestDetailsModel {
  const factory RequestDetailsModel({
    required int request_id,
    required String request_date,
    required String request_time,
    required String status,
    required String remarks,
    required bool completed,
    required List<RequestDetailsItemModel> items,
    required List<String> imageUrl,
  }) = _RequestDetailsModel;

  factory RequestDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$RequestDetailsModelFromJson(json);
}

@freezed
class RequestDetailsItemModel with _$RequestDetailsItemModel {
  const factory RequestDetailsItemModel({
    required int detail_id,
    required int master_id,
    required String item,
    required int qty,
  }) = _RequestDetailsItemModel;

  factory RequestDetailsItemModel.fromJson(Map<String, dynamic> json) =>
      _$RequestDetailsItemModelFromJson(json);
}
