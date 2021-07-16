part of 'shop_review_bloc.dart';

@freezed
class ShopReviewEvent with _$ShopReviewEvent {
  const factory ShopReviewEvent.fetchData() = _FetchData;
  const factory ShopReviewEvent.addReview(double rating, String? review) =
      _AddReview;
  const factory ShopReviewEvent.editReview() = _EditReview;
  const factory ShopReviewEvent.deleteReview() = _DeleteReview;
}
