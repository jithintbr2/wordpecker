part of 'EPub_list_bloc.dart';

@freezed
class EPubListEvent with _$EPubListEvent {
  const factory EPubListEvent.fetchData(
      int franchiseId, int categoryId) = _FetchData;
}
