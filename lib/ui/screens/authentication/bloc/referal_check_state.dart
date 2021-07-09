part of 'referal_check_bloc.dart';

@freezed
class ReferalCheckState with _$ReferalCheckState {
  const factory ReferalCheckState.initial() = _Initial;
  const factory ReferalCheckState.loading() = _Loading;
  const factory ReferalCheckState.loaded() = _Loaded;
  const factory ReferalCheckState.failed() = _Failed;
}
