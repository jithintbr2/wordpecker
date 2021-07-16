import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_review_model.freezed.dart';
part 'shop_review_model.g.dart';

@freezed
class ShopReviewModel with _$ShopReviewModel {
  const factory ShopReviewModel({
    @JsonKey(name: 'user_review') ShopReviewDataModel? userReview,
    @JsonKey(name: 'all_reviews') required List<ShopReviewDataModel> allReviews,
  }) = _ShopReviewModel;

  factory ShopReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ShopReviewModelFromJson(json);
}

@freezed
class ShopReviewDataModel with _$ShopReviewDataModel {
  const factory ShopReviewDataModel({
    // required int reviewId,
    // required int userId,
    // required int shopId,
    // required int rating,
    required String reviewId,
    required String userId,
    required String shopId,
    required String rating,
    required String review,
    required String date,
    required String userName,
  }) = _ShopReviewDataModel;

  factory ShopReviewDataModel.fromJson(Map<String, dynamic> json) =>
      _$ShopReviewDataModelFromJson(json);
}
