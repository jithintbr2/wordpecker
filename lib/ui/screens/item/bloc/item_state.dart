part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState.loading() = _Loading;
  const factory ItemState.loaded(ItemModel data) = _Loaded;
  const factory ItemState.failed(NetworkExceptions exceptions) = _Failed;
}
