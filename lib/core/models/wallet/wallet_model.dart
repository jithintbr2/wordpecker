import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/wallet_reward/wallet_reward_model.dart';

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
class WalletModel with _$WalletModel {
  const factory WalletModel({
    @JsonKey(name: "wallet_balance") required double walletBalance,
    @JsonKey(name: "reward_details")
        required List<WalletRewardModel> rewardDetails,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);
}
