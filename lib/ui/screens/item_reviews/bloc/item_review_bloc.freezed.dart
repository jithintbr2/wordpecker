// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemReviewEventTearOff {
  const _$ItemReviewEventTearOff();

  _FetchAll fetchAll(int itemId) {
    return _FetchAll(
      itemId,
    );
  }

  _Add add(double rating, String? review, int itemId) {
    return _Add(
      rating,
      review,
      itemId,
    );
  }

  _Edit edit(int reviewId, double rating, String? review, int itemId) {
    return _Edit(
      reviewId,
      rating,
      review,
      itemId,
    );
  }
}

/// @nodoc
const $ItemReviewEvent = _$ItemReviewEventTearOff();

/// @nodoc
mixin _$ItemReviewEvent {
  int get itemId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) fetchAll,
    required TResult Function(double rating, String? review, int itemId) add,
    required TResult Function(
            int reviewId, double rating, String? review, int itemId)
        edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? fetchAll,
    TResult Function(double rating, String? review, int itemId)? add,
    TResult Function(int reviewId, double rating, String? review, int itemId)?
        edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemReviewEventCopyWith<ItemReviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemReviewEventCopyWith<$Res> {
  factory $ItemReviewEventCopyWith(
          ItemReviewEvent value, $Res Function(ItemReviewEvent) then) =
      _$ItemReviewEventCopyWithImpl<$Res>;
  $Res call({int itemId});
}

/// @nodoc
class _$ItemReviewEventCopyWithImpl<$Res>
    implements $ItemReviewEventCopyWith<$Res> {
  _$ItemReviewEventCopyWithImpl(this._value, this._then);

  final ItemReviewEvent _value;
  // ignore: unused_field
  final $Res Function(ItemReviewEvent) _then;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FetchAllCopyWith<$Res>
    implements $ItemReviewEventCopyWith<$Res> {
  factory _$FetchAllCopyWith(_FetchAll value, $Res Function(_FetchAll) then) =
      __$FetchAllCopyWithImpl<$Res>;
  @override
  $Res call({int itemId});
}

/// @nodoc
class __$FetchAllCopyWithImpl<$Res> extends _$ItemReviewEventCopyWithImpl<$Res>
    implements _$FetchAllCopyWith<$Res> {
  __$FetchAllCopyWithImpl(_FetchAll _value, $Res Function(_FetchAll) _then)
      : super(_value, (v) => _then(v as _FetchAll));

  @override
  _FetchAll get _value => super._value as _FetchAll;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(_FetchAll(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchAll implements _FetchAll {
  const _$_FetchAll(this.itemId);

  @override
  final int itemId;

  @override
  String toString() {
    return 'ItemReviewEvent.fetchAll(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchAll &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemId);

  @JsonKey(ignore: true)
  @override
  _$FetchAllCopyWith<_FetchAll> get copyWith =>
      __$FetchAllCopyWithImpl<_FetchAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) fetchAll,
    required TResult Function(double rating, String? review, int itemId) add,
    required TResult Function(
            int reviewId, double rating, String? review, int itemId)
        edit,
  }) {
    return fetchAll(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? fetchAll,
    TResult Function(double rating, String? review, int itemId)? add,
    TResult Function(int reviewId, double rating, String? review, int itemId)?
        edit,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
  }) {
    return fetchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(this);
    }
    return orElse();
  }
}

abstract class _FetchAll implements ItemReviewEvent {
  const factory _FetchAll(int itemId) = _$_FetchAll;

  @override
  int get itemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchAllCopyWith<_FetchAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> implements $ItemReviewEventCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  @override
  $Res call({double rating, String? review, int itemId});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$ItemReviewEventCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(_Add _value, $Res Function(_Add) _then)
      : super(_value, (v) => _then(v as _Add));

  @override
  _Add get _value => super._value as _Add;

  @override
  $Res call({
    Object? rating = freezed,
    Object? review = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_Add(
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add(this.rating, this.review, this.itemId);

  @override
  final double rating;
  @override
  final String? review;
  @override
  final int itemId;

  @override
  String toString() {
    return 'ItemReviewEvent.add(rating: $rating, review: $review, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Add &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(itemId);

  @JsonKey(ignore: true)
  @override
  _$AddCopyWith<_Add> get copyWith =>
      __$AddCopyWithImpl<_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) fetchAll,
    required TResult Function(double rating, String? review, int itemId) add,
    required TResult Function(
            int reviewId, double rating, String? review, int itemId)
        edit,
  }) {
    return add(rating, review, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? fetchAll,
    TResult Function(double rating, String? review, int itemId)? add,
    TResult Function(int reviewId, double rating, String? review, int itemId)?
        edit,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(rating, review, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements ItemReviewEvent {
  const factory _Add(double rating, String? review, int itemId) = _$_Add;

  double get rating => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  @override
  int get itemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddCopyWith<_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditCopyWith<$Res> implements $ItemReviewEventCopyWith<$Res> {
  factory _$EditCopyWith(_Edit value, $Res Function(_Edit) then) =
      __$EditCopyWithImpl<$Res>;
  @override
  $Res call({int reviewId, double rating, String? review, int itemId});
}

/// @nodoc
class __$EditCopyWithImpl<$Res> extends _$ItemReviewEventCopyWithImpl<$Res>
    implements _$EditCopyWith<$Res> {
  __$EditCopyWithImpl(_Edit _value, $Res Function(_Edit) _then)
      : super(_value, (v) => _then(v as _Edit));

  @override
  _Edit get _value => super._value as _Edit;

  @override
  $Res call({
    Object? reviewId = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_Edit(
      reviewId == freezed
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Edit implements _Edit {
  const _$_Edit(this.reviewId, this.rating, this.review, this.itemId);

  @override
  final int reviewId;
  @override
  final double rating;
  @override
  final String? review;
  @override
  final int itemId;

  @override
  String toString() {
    return 'ItemReviewEvent.edit(reviewId: $reviewId, rating: $rating, review: $review, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Edit &&
            (identical(other.reviewId, reviewId) ||
                const DeepCollectionEquality()
                    .equals(other.reviewId, reviewId)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reviewId) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(itemId);

  @JsonKey(ignore: true)
  @override
  _$EditCopyWith<_Edit> get copyWith =>
      __$EditCopyWithImpl<_Edit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) fetchAll,
    required TResult Function(double rating, String? review, int itemId) add,
    required TResult Function(
            int reviewId, double rating, String? review, int itemId)
        edit,
  }) {
    return edit(reviewId, rating, review, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? fetchAll,
    TResult Function(double rating, String? review, int itemId)? add,
    TResult Function(int reviewId, double rating, String? review, int itemId)?
        edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(reviewId, rating, review, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Add value) add,
    required TResult Function(_Edit value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Add value)? add,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements ItemReviewEvent {
  const factory _Edit(int reviewId, double rating, String? review, int itemId) =
      _$_Edit;

  int get reviewId => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  @override
  int get itemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditCopyWith<_Edit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ItemReviewStateTearOff {
  const _$ItemReviewStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(ShopReviewModel data) {
    return _Loaded(
      data,
    );
  }

  _Failed failed(NetworkExceptions exceptions) {
    return _Failed(
      exceptions,
    );
  }
}

/// @nodoc
const $ItemReviewState = _$ItemReviewStateTearOff();

/// @nodoc
mixin _$ItemReviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ShopReviewModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ShopReviewModel data)? loaded,
    TResult Function(NetworkExceptions exceptions)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemReviewStateCopyWith<$Res> {
  factory $ItemReviewStateCopyWith(
          ItemReviewState value, $Res Function(ItemReviewState) then) =
      _$ItemReviewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemReviewStateCopyWithImpl<$Res>
    implements $ItemReviewStateCopyWith<$Res> {
  _$ItemReviewStateCopyWithImpl(this._value, this._then);

  final ItemReviewState _value;
  // ignore: unused_field
  final $Res Function(ItemReviewState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ItemReviewStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ItemReviewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ShopReviewModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ShopReviewModel data)? loaded,
    TResult Function(NetworkExceptions exceptions)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ItemReviewState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({ShopReviewModel data});

  $ShopReviewModelCopyWith<$Res> get data;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ItemReviewStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Loaded(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ShopReviewModel,
    ));
  }

  @override
  $ShopReviewModelCopyWith<$Res> get data {
    return $ShopReviewModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.data);

  @override
  final ShopReviewModel data;

  @override
  String toString() {
    return 'ItemReviewState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ShopReviewModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ShopReviewModel data)? loaded,
    TResult Function(NetworkExceptions exceptions)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ItemReviewState {
  const factory _Loaded(ShopReviewModel data) = _$_Loaded;

  ShopReviewModel get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({NetworkExceptions exceptions});

  $NetworkExceptionsCopyWith<$Res> get exceptions;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$ItemReviewStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? exceptions = freezed,
  }) {
    return _then(_Failed(
      exceptions == freezed
          ? _value.exceptions
          : exceptions // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res> get exceptions {
    return $NetworkExceptionsCopyWith<$Res>(_value.exceptions, (value) {
      return _then(_value.copyWith(exceptions: value));
    });
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.exceptions);

  @override
  final NetworkExceptions exceptions;

  @override
  String toString() {
    return 'ItemReviewState.failed(exceptions: $exceptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.exceptions, exceptions) ||
                const DeepCollectionEquality()
                    .equals(other.exceptions, exceptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exceptions);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ShopReviewModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return failed(exceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ShopReviewModel data)? loaded,
    TResult Function(NetworkExceptions exceptions)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(exceptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements ItemReviewState {
  const factory _Failed(NetworkExceptions exceptions) = _$_Failed;

  NetworkExceptions get exceptions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
