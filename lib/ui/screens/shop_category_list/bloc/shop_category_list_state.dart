part of 'shop_category_list_bloc.dart';

@freezed
class ShopCategoryListState with _$ShopCategoryListState {
  const factory ShopCategoryListState.loading() = _Loading;
  const factory ShopCategoryListState.loaded(List<ShopModel> data) = _Loaded;
}
