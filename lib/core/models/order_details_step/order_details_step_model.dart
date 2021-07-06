import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_step_model.freezed.dart';
part 'order_details_step_model.g.dart';

@freezed
class OrderDetailStepModel with _$OrderDetailStepModel {
  const factory OrderDetailStepModel({
    required int step,
    required String key,
    required String status,
    required bool completed,
    required String statusTime,
  }) = _OrderDetailStepModel;

  factory OrderDetailStepModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailStepModelFromJson(json);
}
