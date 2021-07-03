import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/referral_earning/referral_earning_model.dart';
part 'referral_model.freezed.dart';
part 'referral_model.g.dart';

@freezed
class ReferralModel with _$ReferralModel {
  const factory ReferralModel({
    required double walletBalance,
    required String referralLink,
    required String referralCode,
    required String conditionTitle,
    required List<String> conditions,
    required String shareMessage,
    required List<ReferralEarningModel> myEarnings,
  }) = _ReferralModel;

  factory ReferralModel.fromJson(Map<String, dynamic> json) =>
      _$ReferralModelFromJson(json);
}
