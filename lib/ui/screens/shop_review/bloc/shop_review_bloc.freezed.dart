// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shop_review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopReviewEventTearOff {
  const _$ShopReviewEventTearOff();

  _FetchData fetchData() {
    return const _FetchData();
  }

  _AddReview addReview(double rating, String? review) {
    return _AddReview(
      rating,
      review,
    );
  }

  _EditReview editReview() {
    return const _EditReview();
  }

  _DeleteReview deleteReview() {
    return const _DeleteReview();
  }
}

/// @nodoc
const $ShopReviewEvent = _$ShopReviewEventTearOff();

/// @nodoc
mixin _$ShopReviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(double rating, String? review) addReview,
    required TResult Function() editReview,
    required TResult Function() deleteReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(double rating, String? review)? addReview,
    TResult Function()? editReview,
    TResult Function()? deleteReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_AddReview value) addReview,
    required TResult Function(_EditReview value) editReview,
    required TResult Function(_DeleteReview value) deleteReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_AddReview value)? addReview,
    TResult Function(_EditReview value)? editReview,
    TResult Function(_DeleteReview value)? deleteReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopReviewEventCopyWith<$Res> {
  factory $ShopReviewEventCopyWith(
          ShopReviewEvent value, $Res Function(ShopReviewEvent) then) =
      _$ShopReviewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopReviewEventCopyWithImpl<$Res>
    implements $ShopReviewEventCopyWith<$Res> {
  _$ShopReviewEventCopyWithImpl(this._value, this._then);

  final ShopReviewEvent _value;
  // ignore: unused_field
  final $Res Function(ShopReviewEvent) _then;
}

/// @nodoc
abstract class _$FetchDataCopyWith<$Res> {
  factory _$FetchDataCopyWith(
          _FetchData value, $Res Function(_FetchData) then) =
      __$FetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchDataCopyWithImpl<$Res> extends _$ShopReviewEventCopyWithImpl<$Res>
    implements _$FetchDataCopyWith<$Res> {
  __$FetchDataCopyWithImpl(_FetchData _value, $Res Function(_FetchData) _then)
      : super(_value, (v) => _then(v as _FetchData));

  @override
  _FetchData get _value => super._value as _FetchData;
}

/// @nodoc

class _$_FetchData implements _FetchData {
  const _$_FetchData();

  @override
  String toString() {
    return 'ShopReviewEvent.fetchData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(double rating, String? review) addReview,
    required TResult Function() editReview,
    required TResult Function() deleteReview,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(double rating, String? review)? addReview,
    TResult Function()? editReview,
    TResult Function()? deleteReview,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_AddReview value) addReview,
    required TResult Function(_EditReview value) editReview,
    required TResult Function(_DeleteReview value) deleteReview,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_AddReview value)? addReview,
    TResult Function(_EditReview value)? editReview,
    TResult Function(_DeleteReview value)? deleteReview,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchData implements ShopReviewEvent {
  const factory _FetchData() = _$_FetchData;
}

/// @nodoc
abstract class _$AddReviewCopyWith<$Res> {
  factory _$AddReviewCopyWith(
          _AddReview value, $Res Function(_AddReview) then) =
      __$AddReviewCopyWithImpl<$Res>;
  $Res call({double rating, String? review});
}

/// @nodoc
class __$AddReviewCopyWithImpl<$Res> extends _$ShopReviewEventCopyWithImpl<$Res>
    implements _$AddReviewCopyWith<$Res> {
  __$AddReviewCopyWithImpl(_AddReview _value, $Res Function(_AddReview) _then)
      : super(_value, (v) => _then(v as _AddReview));

  @override
  _AddReview get _value => super._value as _AddReview;

  @override
  $Res call({
    Object? rating = freezed,
    Object? review = freezed,
  }) {
    return _then(_AddReview(
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddReview implements _AddReview {
  const _$_AddReview(this.rating, this.review);

  @override
  final double rating;
  @override
  final String? review;

  @override
  String toString() {
    return 'ShopReviewEvent.addReview(rating: $rating, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddReview &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(review);

  @JsonKey(ignore: true)
  @override
  _$AddReviewCopyWith<_AddReview> get copyWith =>
      __$AddReviewCopyWithImpl<_AddReview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(double rating, String? review) addReview,
    required TResult Function() editReview,
    required TResult Function() deleteReview,
  }) {
    return addReview(rating, review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(double rating, String? review)? addReview,
    TResult Function()? editReview,
    TResult Function()? deleteReview,
    required TResult orElse(),
  }) {
    if (addReview != null) {
      return addReview(rating, review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_AddReview value) addReview,
    required TResult Function(_EditReview value) editReview,
    required TResult Function(_DeleteReview value) deleteReview,
  }) {
    return addReview(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_AddReview value)? addReview,
    TResult Function(_EditReview value)? editReview,
    TResult Function(_DeleteReview value)? deleteReview,
    required TResult orElse(),
  }) {
    if (addReview != null) {
      return addReview(this);
    }
    return orElse();
  }
}

abstract class _AddReview implements ShopReviewEvent {
  const factory _AddReview(double rating, String? review) = _$_AddReview;

  double get rating => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddReviewCopyWith<_AddReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditReviewCopyWith<$Res> {
  factory _$EditReviewCopyWith(
          _EditReview value, $Res Function(_EditReview) then) =
      __$EditReviewCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditReviewCopyWithImpl<$Res>
    extends _$ShopReviewEventCopyWithImpl<$Res>
    implements _$EditReviewCopyWith<$Res> {
  __$EditReviewCopyWithImpl(
      _EditReview _value, $Res Function(_EditReview) _then)
      : super(_value, (v) => _then(v as _EditReview));

  @override
  _EditReview get _value => super._value as _EditReview;
}

/// @nodoc

class _$_EditReview implements _EditReview {
  const _$_EditReview();

  @override
  String toString() {
    return 'ShopReviewEvent.editReview()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EditReview);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(double rating, String? review) addReview,
    required TResult Function() editReview,
    required TResult Function() deleteReview,
  }) {
    return editReview();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(double rating, String? review)? addReview,
    TResult Function()? editReview,
    TResult Function()? deleteReview,
    required TResult orElse(),
  }) {
    if (editReview != null) {
      return editReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_AddReview value) addReview,
    required TResult Function(_EditReview value) editReview,
    required TResult Function(_DeleteReview value) deleteReview,
  }) {
    return editReview(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_AddReview value)? addReview,
    TResult Function(_EditReview value)? editReview,
    TResult Function(_DeleteReview value)? deleteReview,
    required TResult orElse(),
  }) {
    if (editReview != null) {
      return editReview(this);
    }
    return orElse();
  }
}

abstract class _EditReview implements ShopReviewEvent {
  const factory _EditReview() = _$_EditReview;
}

/// @nodoc
abstract class _$DeleteReviewCopyWith<$Res> {
  factory _$DeleteReviewCopyWith(
          _DeleteReview value, $Res Function(_DeleteReview) then) =
      __$DeleteReviewCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteReviewCopyWithImpl<$Res>
    extends _$ShopReviewEventCopyWithImpl<$Res>
    implements _$DeleteReviewCopyWith<$Res> {
  __$DeleteReviewCopyWithImpl(
      _DeleteReview _value, $Res Function(_DeleteReview) _then)
      : super(_value, (v) => _then(v as _DeleteReview));

  @override
  _DeleteReview get _value => super._value as _DeleteReview;
}

/// @nodoc

class _$_DeleteReview implements _DeleteReview {
  const _$_DeleteReview();

  @override
  String toString() {
    return 'ShopReviewEvent.deleteReview()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteReview);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(double rating, String? review) addReview,
    required TResult Function() editReview,
    required TResult Function() deleteReview,
  }) {
    return deleteReview();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(double rating, String? review)? addReview,
    TResult Function()? editReview,
    TResult Function()? deleteReview,
    required TResult orElse(),
  }) {
    if (deleteReview != null) {
      return deleteReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_AddReview value) addReview,
    required TResult Function(_EditReview value) editReview,
    required TResult Function(_DeleteReview value) deleteReview,
  }) {
    return deleteReview(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_AddReview value)? addReview,
    TResult Function(_EditReview value)? editReview,
    TResult Function(_DeleteReview value)? deleteReview,
    required TResult orElse(),
  }) {
    if (deleteReview != null) {
      return deleteReview(this);
    }
    return orElse();
  }
}

abstract class _DeleteReview implements ShopReviewEvent {
  const factory _DeleteReview() = _$_DeleteReview;
}

/// @nodoc
class _$ShopReviewStateTearOff {
  const _$ShopReviewStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(ShopReviewModel data) {
    return _Loaded(
      data,
    );
  }

  _Failed failed(NetworkExceptions exception) {
    return _Failed(
      exception,
    );
  }
}

/// @nodoc
const $ShopReviewState = _$ShopReviewStateTearOff();

/// @nodoc
mixin _$ShopReviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ShopReviewModel data) loaded,
    required TResult Function(NetworkExceptions exception) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ShopReviewModel data)? loaded,
    TResult Function(NetworkExceptions exception)? failed,
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
abstract class $ShopReviewStateCopyWith<$Res> {
  factory $ShopReviewStateCopyWith(
          ShopReviewState value, $Res Function(ShopReviewState) then) =
      _$ShopReviewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopReviewStateCopyWithImpl<$Res>
    implements $ShopReviewStateCopyWith<$Res> {
  _$ShopReviewStateCopyWithImpl(this._value, this._then);

  final ShopReviewState _value;
  // ignore: unused_field
  final $Res Function(ShopReviewState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ShopReviewStateCopyWithImpl<$Res>
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
    return 'ShopReviewState.loading()';
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
    required TResult Function(NetworkExceptions exception) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ShopReviewModel data)? loaded,
    TResult Function(NetworkExceptions exception)? failed,
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

abstract class _Loading implements ShopReviewState {
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
class __$LoadedCopyWithImpl<$Res> extends _$ShopReviewStateCopyWithImpl<$Res>
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
    return 'ShopReviewState.loaded(data: $data)';
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
    required TResult Function(NetworkExceptions exception) failed,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ShopReviewModel data)? loaded,
    TResult Function(NetworkExceptions exception)? failed,
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

abstract class _Loaded implements ShopReviewState {
  const factory _Loaded(ShopReviewModel data) = _$_Loaded;

  ShopReviewModel get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({NetworkExceptions exception});

  $NetworkExceptionsCopyWith<$Res> get exception;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$ShopReviewStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Failed(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res> get exception {
    return $NetworkExceptionsCopyWith<$Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value));
    });
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.exception);

  @override
  final NetworkExceptions exception;

  @override
  String toString() {
    return 'ShopReviewState.failed(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ShopReviewModel data) loaded,
    required TResult Function(NetworkExceptions exception) failed,
  }) {
    return failed(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ShopReviewModel data)? loaded,
    TResult Function(NetworkExceptions exception)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(exception);
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

abstract class _Failed implements ShopReviewState {
  const factory _Failed(NetworkExceptions exception) = _$_Failed;

  NetworkExceptions get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
