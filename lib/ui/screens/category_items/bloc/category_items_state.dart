part of 'category_items_bloc.dart';

@freezed
class CategoryItemsState with _$CategoryItemsState {
  const factory CategoryItemsState.loading() = _Loading;
  const factory CategoryItemsState.loaded(List<SubCategoryModel> data) =
      _Loaded;
  const factory CategoryItemsState.failed(NetworkExceptions exceptions) =
      _Failed;
}
