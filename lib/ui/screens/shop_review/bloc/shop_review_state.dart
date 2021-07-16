part of 'shop_review_bloc.dart';

@freezed
class ShopReviewState with _$ShopReviewState {
  const factory ShopReviewState.loading() = _Loading;
  const factory ShopReviewState.loaded(ShopReviewModel data) = _Loaded;
  const factory ShopReviewState.failed(NetworkExceptions exception) = _Failed;
}
