// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'referral_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReferralEventTearOff {
  const _$ReferralEventTearOff();

  _FetchReferralData fetchReferralData() {
    return const _FetchReferralData();
  }
}

/// @nodoc
const $ReferralEvent = _$ReferralEventTearOff();

/// @nodoc
mixin _$ReferralEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchReferralData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchReferralData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReferralData value) fetchReferralData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReferralData value)? fetchReferralData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralEventCopyWith<$Res> {
  factory $ReferralEventCopyWith(
          ReferralEvent value, $Res Function(ReferralEvent) then) =
      _$ReferralEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReferralEventCopyWithImpl<$Res>
    implements $ReferralEventCopyWith<$Res> {
  _$ReferralEventCopyWithImpl(this._value, this._then);

  final ReferralEvent _value;
  // ignore: unused_field
  final $Res Function(ReferralEvent) _then;
}

/// @nodoc
abstract class _$FetchReferralDataCopyWith<$Res> {
  factory _$FetchReferralDataCopyWith(
          _FetchReferralData value, $Res Function(_FetchReferralData) then) =
      __$FetchReferralDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchReferralDataCopyWithImpl<$Res>
    extends _$ReferralEventCopyWithImpl<$Res>
    implements _$FetchReferralDataCopyWith<$Res> {
  __$FetchReferralDataCopyWithImpl(
      _FetchReferralData _value, $Res Function(_FetchReferralData) _then)
      : super(_value, (v) => _then(v as _FetchReferralData));

  @override
  _FetchReferralData get _value => super._value as _FetchReferralData;
}

/// @nodoc

class _$_FetchReferralData implements _FetchReferralData {
  const _$_FetchReferralData();

  @override
  String toString() {
    return 'ReferralEvent.fetchReferralData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchReferralData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchReferralData,
  }) {
    return fetchReferralData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchReferralData,
    required TResult orElse(),
  }) {
    if (fetchReferralData != null) {
      return fetchReferralData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReferralData value) fetchReferralData,
  }) {
    return fetchReferralData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReferralData value)? fetchReferralData,
    required TResult orElse(),
  }) {
    if (fetchReferralData != null) {
      return fetchReferralData(this);
    }
    return orElse();
  }
}

abstract class _FetchReferralData implements ReferralEvent {
  const factory _FetchReferralData() = _$_FetchReferralData;
}

/// @nodoc
class _$ReferralStateTearOff {
  const _$ReferralStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(ReferralModel data) {
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
const $ReferralState = _$ReferralStateTearOff();

/// @nodoc
mixin _$ReferralState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ReferralModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReferralModel data)? loaded,
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
abstract class $ReferralStateCopyWith<$Res> {
  factory $ReferralStateCopyWith(
          ReferralState value, $Res Function(ReferralState) then) =
      _$ReferralStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReferralStateCopyWithImpl<$Res>
    implements $ReferralStateCopyWith<$Res> {
  _$ReferralStateCopyWithImpl(this._value, this._then);

  final ReferralState _value;
  // ignore: unused_field
  final $Res Function(ReferralState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ReferralStateCopyWithImpl<$Res>
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
    return 'ReferralState.loading()';
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
    required TResult Function(ReferralModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReferralModel data)? loaded,
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

abstract class _Loading implements ReferralState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({ReferralModel data});

  $ReferralModelCopyWith<$Res> get data;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ReferralStateCopyWithImpl<$Res>
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
              as ReferralModel,
    ));
  }

  @override
  $ReferralModelCopyWith<$Res> get data {
    return $ReferralModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.data);

  @override
  final ReferralModel data;

  @override
  String toString() {
    return 'ReferralState.loaded(data: $data)';
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
    required TResult Function(ReferralModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReferralModel data)? loaded,
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

abstract class _Loaded implements ReferralState {
  const factory _Loaded(ReferralModel data) = _$_Loaded;

  ReferralModel get data => throw _privateConstructorUsedError;
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
class __$FailedCopyWithImpl<$Res> extends _$ReferralStateCopyWithImpl<$Res>
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
    return 'ReferralState.failed(exceptions: $exceptions)';
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
    required TResult Function(ReferralModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return failed(exceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReferralModel data)? loaded,
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

abstract class _Failed implements ReferralState {
  const factory _Failed(NetworkExceptions exceptions) = _$_Failed;

  NetworkExceptions get exceptions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
