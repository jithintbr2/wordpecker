part of 'authors_list_bloc.dart';

@freezed
class AuthorsListEvent with _$AuthorsListEvent {
  const factory AuthorsListEvent.fetchData(
      int franchiseId, int categoryId) = _FetchData;
}
