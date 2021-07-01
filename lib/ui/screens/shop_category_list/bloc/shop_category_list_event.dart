part of 'shop_category_list_bloc.dart';

@freezed
class ShopCategoryListEvent with _$ShopCategoryListEvent {
  const factory ShopCategoryListEvent.fetchData(int categoryId) = _FetchData;
}
