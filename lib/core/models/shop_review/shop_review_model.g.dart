// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopReviewModel _$_$_ShopReviewModelFromJson(Map<String, dynamic> json) {
  return _$_ShopReviewModel(
    userReview: json['user_review'] == null
        ? null
        : ShopReviewDataModel.fromJson(
            json['user_review'] as Map<String, dynamic>),
    allReviews: (json['all_reviews'] as List<dynamic>)
        .map((e) => ShopReviewDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ShopReviewModelToJson(_$_ShopReviewModel instance) =>
    <String, dynamic>{
      'user_review': instance.userReview,
      'all_reviews': instance.allReviews,
    };

_$_ShopReviewDataModel _$_$_ShopReviewDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_ShopReviewDataModel(
    reviewId: json['reviewId'] as String,
    userId: json['userId'] as String,
    shopId: json['shopId'] as String,
    rating: json['rating'] as String,
    review: json['review'] as String,
    date: json['date'] as String,
    userName: json['userName'] as String,
  );
}

Map<String, dynamic> _$_$_ShopReviewDataModelToJson(
        _$_ShopReviewDataModel instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'userId': instance.userId,
      'shopId': instance.shopId,
      'rating': instance.rating,
      'review': instance.review,
      'date': instance.date,
      'userName': instance.userName,
    };
