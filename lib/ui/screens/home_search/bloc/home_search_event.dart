part of 'home_search_bloc.dart';

@freezed
class HomeSearchEvent with _$HomeSearchEvent {
  const factory HomeSearchEvent.search(String searchQuery) = _Search;
  const factory HomeSearchEvent.reset() = _Reset;
}
