part of 'shop_category_list_bloc.dart';

@freezed
class ShopCategoryListEvent with _$ShopCategoryListEvent {
  const factory ShopCategoryListEvent.fetchData(
      int franchiseId, int categoryId) = _FetchData;
}
