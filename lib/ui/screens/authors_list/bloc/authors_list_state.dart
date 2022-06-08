part of 'authors_list_bloc.dart';

@freezed
class AuthorsListState with _$AuthorsListState {
  const factory AuthorsListState.loading() = _Loading;
  // const factory ShopCategoryListState.loaded(List<ShopModel> data) = _Loaded;
  const factory AuthorsListState.loaded(List<AuthorsModel> data) = _Loaded;
  const factory AuthorsListState.failed(NetworkExceptions exceptions) =
      _Failed;
}
