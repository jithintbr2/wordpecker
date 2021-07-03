import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_earning_model.freezed.dart';
part 'referral_earning_model.g.dart';

@freezed
class ReferralEarningModel with _$ReferralEarningModel {
  const factory ReferralEarningModel({
    required int id,
    required String customerName,
    required String joinedDate,
    required double earnings,
  }) = _ReferralEarningModel;

  factory ReferralEarningModel.fromJson(Map<String, dynamic> json) =>
      _$ReferralEarningModelFromJson(json);
}
