part of 'authenticationpage_bloc.dart';

@freezed
class AuthenticationpageEvent with _$AuthenticationpageEvent {
  const factory AuthenticationpageEvent.verifyPhone({required String phone}) =
      _VerifyPhone;
  const factory AuthenticationpageEvent.generateOTP({
    required String phone,
    required String signature,
    required int otp,
  }) = _GenerateOTP;
  const factory AuthenticationpageEvent.login({
    required String phone,
    required String password,
  }) = _Login;
  const factory AuthenticationpageEvent.yeildRegisterState() =
      _YieldRegisterState;
  const factory AuthenticationpageEvent.register({
    required String name,
    required String phone,
    required String password,
    String? referredLink,
    String? referalId,
  }) = _Register;
}
