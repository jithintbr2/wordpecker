part of 'authenticationpage_bloc.dart';

@freezed
class AuthenticationpageState with _$AuthenticationpageState {
  const factory AuthenticationpageState.initial({required bool isLoading}) =
      _Initial;
  const factory AuthenticationpageState.loginState({required bool isLoading}) =
      _LoginState;
  const factory AuthenticationpageState.registerState(
      {required bool isLoading}) = _RegisterState;
  const factory AuthenticationpageState.otpState() = _OTPState;
}
