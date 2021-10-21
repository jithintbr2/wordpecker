part of 'custom_bloc.dart';

@freezed
class CustomEvent with _$CustomEvent {
  const factory CustomEvent.fetchData(int franchiseId) = _FetchData;
}
