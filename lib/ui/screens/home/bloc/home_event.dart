part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchData(int franchiseId) = _FetchData;
  const factory HomeEvent.logout() = _Logout;
}
