part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.unknown() = _Unknown;
  const factory SplashState.unVerified() = _UnVerified;
  const factory SplashState.verified() = _Verified;
}
