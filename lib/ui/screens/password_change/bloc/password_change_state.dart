part of 'password_change_bloc.dart';

@freezed
class PasswordChangeState with _$PasswordChangeState {
  const factory PasswordChangeState.busy() = _Busy;
  const factory PasswordChangeState.idle() = _Idle;
}
