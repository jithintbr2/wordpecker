// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shop_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopReviewModel _$ShopReviewModelFromJson(Map<String, dynamic> json) {
  return _ShopReviewModel.fromJson(json);
}

/// @nodoc
class _$ShopReviewModelTearOff {
  const _$ShopReviewModelTearOff();

  _ShopReviewModel call(
      {@JsonKey(name: 'user_review')
          ShopReviewDataModel? userReview,
      @JsonKey(name: 'all_reviews')
          required List<ShopReviewDataModel> allReviews}) {
    return _ShopReviewModel(
      userReview: userReview,
      allReviews: allReviews,
    );
  }

  ShopReviewModel fromJson(Map<String, Object> json) {
    return ShopReviewModel.fromJson(json);
  }
}

/// @nodoc
const $ShopReviewModel = _$ShopReviewModelTearOff();

/// @nodoc
mixin _$ShopReviewModel {
  @JsonKey(name: 'user_review')
  ShopReviewDataModel? get userReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'all_reviews')
  List<ShopReviewDataModel> get allReviews =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopReviewModelCopyWith<ShopReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopReviewModelCopyWith<$Res> {
  factory $ShopReviewModelCopyWith(
          ShopReviewModel value, $Res Function(ShopReviewModel) then) =
      _$ShopReviewModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_review') ShopReviewDataModel? userReview,
      @JsonKey(name: 'all_reviews') List<ShopReviewDataModel> allReviews});

  $ShopReviewDataModelCopyWith<$Res>? get userReview;
}

/// @nodoc
class _$ShopReviewModelCopyWithImpl<$Res>
    implements $ShopReviewModelCopyWith<$Res> {
  _$ShopReviewModelCopyWithImpl(this._value, this._then);

  final ShopReviewModel _value;
  // ignore: unused_field
  final $Res Function(ShopReviewModel) _then;

  @override
  $Res call({
    Object? userReview = freezed,
    Object? allReviews = freezed,
  }) {
    return _then(_value.copyWith(
      userReview: userReview == freezed
          ? _value.userReview
          : userReview // ignore: cast_nullable_to_non_nullable
              as ShopReviewDataModel?,
      allReviews: allReviews == freezed
          ? _value.allReviews
          : allReviews // ignore: cast_nullable_to_non_nullable
              as List<ShopReviewDataModel>,
    ));
  }

  @override
  $ShopReviewDataModelCopyWith<$Res>? get userReview {
    if (_value.userReview == null) {
      return null;
    }

    return $ShopReviewDataModelCopyWith<$Res>(_value.userReview!, (value) {
      return _then(_value.copyWith(userReview: value));
    });
  }
}

/// @nodoc
abstract class _$ShopReviewModelCopyWith<$Res>
    implements $ShopReviewModelCopyWith<$Res> {
  factory _$ShopReviewModelCopyWith(
          _ShopReviewModel value, $Res Function(_ShopReviewModel) then) =
      __$ShopReviewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_review') ShopReviewDataModel? userReview,
      @JsonKey(name: 'all_reviews') List<ShopReviewDataModel> allReviews});

  @override
  $ShopReviewDataModelCopyWith<$Res>? get userReview;
}

/// @nodoc
class __$ShopReviewModelCopyWithImpl<$Res>
    extends _$ShopReviewModelCopyWithImpl<$Res>
    implements _$ShopReviewModelCopyWith<$Res> {
  __$ShopReviewModelCopyWithImpl(
      _ShopReviewModel _value, $Res Function(_ShopReviewModel) _then)
      : super(_value, (v) => _then(v as _ShopReviewModel));

  @override
  _ShopReviewModel get _value => super._value as _ShopReviewModel;

  @override
  $Res call({
    Object? userReview = freezed,
    Object? allReviews = freezed,
  }) {
    return _then(_ShopReviewModel(
      userReview: userReview == freezed
          ? _value.userReview
          : userReview // ignore: cast_nullable_to_non_nullable
              as ShopReviewDataModel?,
      allReviews: allReviews == freezed
          ? _value.allReviews
          : allReviews // ignore: cast_nullable_to_non_nullable
              as List<ShopReviewDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopReviewModel implements _ShopReviewModel {
  const _$_ShopReviewModel(
      {@JsonKey(name: 'user_review') this.userReview,
      @JsonKey(name: 'all_reviews') required this.allReviews});

  factory _$_ShopReviewModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ShopReviewModelFromJson(json);

  @override
  @JsonKey(name: 'user_review')
  final ShopReviewDataModel? userReview;
  @override
  @JsonKey(name: 'all_reviews')
  final List<ShopReviewDataModel> allReviews;

  @override
  String toString() {
    return 'ShopReviewModel(userReview: $userReview, allReviews: $allReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopReviewModel &&
            (identical(other.userReview, userReview) ||
                const DeepCollectionEquality()
                    .equals(other.userReview, userReview)) &&
            (identical(other.allReviews, allReviews) ||
                const DeepCollectionEquality()
                    .equals(other.allReviews, allReviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userReview) ^
      const DeepCollectionEquality().hash(allReviews);

  @JsonKey(ignore: true)
  @override
  _$ShopReviewModelCopyWith<_ShopReviewModel> get copyWith =>
      __$ShopReviewModelCopyWithImpl<_ShopReviewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShopReviewModelToJson(this);
  }
}

abstract class _ShopReviewModel implements ShopReviewModel {
  const factory _ShopReviewModel(
      {@JsonKey(name: 'user_review')
          ShopReviewDataModel? userReview,
      @JsonKey(name: 'all_reviews')
          required List<ShopReviewDataModel> allReviews}) = _$_ShopReviewModel;

  factory _ShopReviewModel.fromJson(Map<String, dynamic> json) =
      _$_ShopReviewModel.fromJson;

  @override
  @JsonKey(name: 'user_review')
  ShopReviewDataModel? get userReview => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'all_reviews')
  List<ShopReviewDataModel> get allReviews =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopReviewModelCopyWith<_ShopReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopReviewDataModel _$ShopReviewDataModelFromJson(Map<String, dynamic> json) {
  return _ShopReviewDataModel.fromJson(json);
}

/// @nodoc
class _$ShopReviewDataModelTearOff {
  const _$ShopReviewDataModelTearOff();

  _ShopReviewDataModel call(
      {required int reviewId,
      required int userId,
      required int rating,
      required String review,
      required String date,
      required String userName}) {
    return _ShopReviewDataModel(
      reviewId: reviewId,
      userId: userId,
      rating: rating,
      review: review,
      date: date,
      userName: userName,
    );
  }

  ShopReviewDataModel fromJson(Map<String, Object> json) {
    return ShopReviewDataModel.fromJson(json);
  }
}

/// @nodoc
const $ShopReviewDataModel = _$ShopReviewDataModelTearOff();

/// @nodoc
mixin _$ShopReviewDataModel {
  int get reviewId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopReviewDataModelCopyWith<ShopReviewDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopReviewDataModelCopyWith<$Res> {
  factory $ShopReviewDataModelCopyWith(
          ShopReviewDataModel value, $Res Function(ShopReviewDataModel) then) =
      _$ShopReviewDataModelCopyWithImpl<$Res>;
  $Res call(
      {int reviewId,
      int userId,
      int rating,
      String review,
      String date,
      String userName});
}

/// @nodoc
class _$ShopReviewDataModelCopyWithImpl<$Res>
    implements $ShopReviewDataModelCopyWith<$Res> {
  _$ShopReviewDataModelCopyWithImpl(this._value, this._then);

  final ShopReviewDataModel _value;
  // ignore: unused_field
  final $Res Function(ShopReviewDataModel) _then;

  @override
  $Res call({
    Object? reviewId = freezed,
    Object? userId = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? date = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      reviewId: reviewId == freezed
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ShopReviewDataModelCopyWith<$Res>
    implements $ShopReviewDataModelCopyWith<$Res> {
  factory _$ShopReviewDataModelCopyWith(_ShopReviewDataModel value,
          $Res Function(_ShopReviewDataModel) then) =
      __$ShopReviewDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int reviewId,
      int userId,
      int rating,
      String review,
      String date,
      String userName});
}

/// @nodoc
class __$ShopReviewDataModelCopyWithImpl<$Res>
    extends _$ShopReviewDataModelCopyWithImpl<$Res>
    implements _$ShopReviewDataModelCopyWith<$Res> {
  __$ShopReviewDataModelCopyWithImpl(
      _ShopReviewDataModel _value, $Res Function(_ShopReviewDataModel) _then)
      : super(_value, (v) => _then(v as _ShopReviewDataModel));

  @override
  _ShopReviewDataModel get _value => super._value as _ShopReviewDataModel;

  @override
  $Res call({
    Object? reviewId = freezed,
    Object? userId = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? date = freezed,
    Object? userName = freezed,
  }) {
    return _then(_ShopReviewDataModel(
      reviewId: reviewId == freezed
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopReviewDataModel implements _ShopReviewDataModel {
  const _$_ShopReviewDataModel(
      {required this.reviewId,
      required this.userId,
      required this.rating,
      required this.review,
      required this.date,
      required this.userName});

  factory _$_ShopReviewDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ShopReviewDataModelFromJson(json);

  @override
  final int reviewId;
  @override
  final int userId;
  @override
  final int rating;
  @override
  final String review;
  @override
  final String date;
  @override
  final String userName;

  @override
  String toString() {
    return 'ShopReviewDataModel(reviewId: $reviewId, userId: $userId, rating: $rating, review: $review, date: $date, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopReviewDataModel &&
            (identical(other.reviewId, reviewId) ||
                const DeepCollectionEquality()
                    .equals(other.reviewId, reviewId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reviewId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(userName);

  @JsonKey(ignore: true)
  @override
  _$ShopReviewDataModelCopyWith<_ShopReviewDataModel> get copyWith =>
      __$ShopReviewDataModelCopyWithImpl<_ShopReviewDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShopReviewDataModelToJson(this);
  }
}

abstract class _ShopReviewDataModel implements ShopReviewDataModel {
  const factory _ShopReviewDataModel(
      {required int reviewId,
      required int userId,
      required int rating,
      required String review,
      required String date,
      required String userName}) = _$_ShopReviewDataModel;

  factory _ShopReviewDataModel.fromJson(Map<String, dynamic> json) =
      _$_ShopReviewDataModel.fromJson;

  @override
  int get reviewId => throw _privateConstructorUsedError;
  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  int get rating => throw _privateConstructorUsedError;
  @override
  String get review => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopReviewDataModelCopyWith<_ShopReviewDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
