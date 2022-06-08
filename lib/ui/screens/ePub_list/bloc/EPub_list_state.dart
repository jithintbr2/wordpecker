part of 'EPub_list_bloc.dart';

@freezed
class EPubListState with _$EPubListState {
  const factory EPubListState.loading() = _Loading;
  // const factory ShopCategoryListState.loaded(List<ShopModel> data) = _Loaded;
  const factory EPubListState.loaded(List<EPubModel> data) = _Loaded;
  const factory EPubListState.failed(NetworkExceptions exceptions) =
      _Failed;
}
