import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_reward_model.freezed.dart';
part 'wallet_reward_model.g.dart';

@freezed
class WalletRewardModel with _$WalletRewardModel {
  const factory WalletRewardModel({
    @JsonKey(name: 'ponitId') required int id,
    required int point,
    required String dateCreate,
    required String description,
    required bool isOpen,
    required bool scratched,
  }) = _WalletRewardModel;

  factory WalletRewardModel.fromJson(Map<String, dynamic> json) =>
      _$WalletRewardModelFromJson(json);
}
