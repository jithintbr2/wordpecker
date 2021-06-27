part of 'category_items_bloc.dart';

@freezed
class CategoryItemsEvent with _$CategoryItemsEvent {
  const factory CategoryItemsEvent.fetchData(int categoryId) = _FetchData;
}
