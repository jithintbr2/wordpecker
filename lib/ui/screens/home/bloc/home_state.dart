part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded(HomePageModel data) = _Loaded;
  const factory HomeState.failed(NetworkExceptions exceptions) = _Failed;
}
