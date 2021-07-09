part of 'referal_check_bloc.dart';

@freezed
class ReferalCheckEvent with _$ReferalCheckEvent {
  const factory ReferalCheckEvent.checkValidity(String referalCode) =
      _CheckValidity;
  const factory ReferalCheckEvent.reset() = _Reset;
}
