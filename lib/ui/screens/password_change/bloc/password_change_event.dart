part of 'password_change_bloc.dart';

@freezed
class PasswordChangeEvent with _$PasswordChangeEvent {
  const factory PasswordChangeEvent.changePassword(String password) =
      _ChangePassword;
}
