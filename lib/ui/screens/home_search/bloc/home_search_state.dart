part of 'home_search_bloc.dart';

@freezed
class HomeSearchState with _$HomeSearchState {
  const factory HomeSearchState.loading() = _Loading;
  const factory HomeSearchState.loaded(HomeSearchModel data) = _Loaded;
  const factory HomeSearchState.failed(NetworkExceptions exceptions) = _Failed;
}
