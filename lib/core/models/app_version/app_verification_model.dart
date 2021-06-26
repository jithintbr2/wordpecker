import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_verification_model.freezed.dart';

@freezed
class AppVerificationModel with _$AppVerificationModel {
  const factory AppVerificationModel(
      {required bool updateAvailable,
      required bool verified}) = _AppVerificationModel;
}
