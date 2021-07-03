part of 'referral_bloc.dart';

@freezed
class ReferralState with _$ReferralState {
  const factory ReferralState.loading() = _Loading;
  const factory ReferralState.loaded(ReferralModel data) = _Loaded;
  const factory ReferralState.failed(NetworkExceptions exceptions) = _Failed;
}
