part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState.loading() = _Loading;
  const factory ShopState.loaded(ShopModel data) = _Loaded;
  const factory ShopState.failed(NetworkExceptions exception) = _Failed;
}
