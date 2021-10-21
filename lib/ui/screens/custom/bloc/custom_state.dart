part of 'custom_bloc.dart';

@freezed
class CustomState with _$CustomState {
  const factory CustomState.loading() = _Loading;
  const factory CustomState.loaded(CustomPageModel data) = _Loaded;
  const factory CustomState.failed(NetworkExceptions exceptions) = _Failed;
}
