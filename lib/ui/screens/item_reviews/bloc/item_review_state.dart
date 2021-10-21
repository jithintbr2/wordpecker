part of 'item_review_bloc.dart';

@freezed
class ItemReviewState with _$ItemReviewState {
  const factory ItemReviewState.loading() = _Loading;
  const factory ItemReviewState.loaded(ShopReviewModel data) = _Loaded;
  const factory ItemReviewState.failed(NetworkExceptions exceptions) = _Failed;
}
