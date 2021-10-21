part of 'item_review_bloc.dart';

@freezed
class ItemReviewEvent with _$ItemReviewEvent {
  const factory ItemReviewEvent.fetchAll(int itemId) = _FetchAll;
  const factory ItemReviewEvent.add(double rating, String? review, int itemId) =
      _Add;
  const factory ItemReviewEvent.edit(
      int reviewId, double rating, String? review, int itemId) = _Edit;
}
