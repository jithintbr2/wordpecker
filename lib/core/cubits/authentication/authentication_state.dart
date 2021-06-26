part of 'authentication_cubit.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = _Unknown;
  const factory AuthenticationState.unAuthorized(
      {required bool updateAvailable}) = _UnAuthorized;
  const factory AuthenticationState.authorized(
      {required UserModel user, required bool updateAvailable}) = _Authorized;
}
