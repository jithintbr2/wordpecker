// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'referal_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReferalCheckEventTearOff {
  const _$ReferalCheckEventTearOff();

  _CheckValidity checkValidity(String referalCode) {
    return _CheckValidity(
      referalCode,
    );
  }

  _Reset reset() {
    return const _Reset();
  }
}

/// @nodoc
const $ReferalCheckEvent = _$ReferalCheckEventTearOff();

/// @nodoc
mixin _$ReferalCheckEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String referalCode) checkValidity,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String referalCode)? checkValidity,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckValidity value) checkValidity,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckValidity value)? checkValidity,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferalCheckEventCopyWith<$Res> {
  factory $ReferalCheckEventCopyWith(
          ReferalCheckEvent value, $Res Function(ReferalCheckEvent) then) =
      _$ReferalCheckEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReferalCheckEventCopyWithImpl<$Res>
    implements $ReferalCheckEventCopyWith<$Res> {
  _$ReferalCheckEventCopyWithImpl(this._value, this._then);

  final ReferalCheckEvent _value;
  // ignore: unused_field
  final $Res Function(ReferalCheckEvent) _then;
}

/// @nodoc
abstract class _$CheckValidityCopyWith<$Res> {
  factory _$CheckValidityCopyWith(
          _CheckValidity value, $Res Function(_CheckValidity) then) =
      __$CheckValidityCopyWithImpl<$Res>;
  $Res call({String referalCode});
}

/// @nodoc
class __$CheckValidityCopyWithImpl<$Res>
    extends _$ReferalCheckEventCopyWithImpl<$Res>
    implements _$CheckValidityCopyWith<$Res> {
  __$CheckValidityCopyWithImpl(
      _CheckValidity _value, $Res Function(_CheckValidity) _then)
      : super(_value, (v) => _then(v as _CheckValidity));

  @override
  _CheckValidity get _value => super._value as _CheckValidity;

  @override
  $Res call({
    Object? referalCode = freezed,
  }) {
    return _then(_CheckValidity(
      referalCode == freezed
          ? _value.referalCode
          : referalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckValidity implements _CheckValidity {
  const _$_CheckValidity(this.referalCode);

  @override
  final String referalCode;

  @override
  String toString() {
    return 'ReferalCheckEvent.checkValidity(referalCode: $referalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckValidity &&
            (identical(other.referalCode, referalCode) ||
                const DeepCollectionEquality()
                    .equals(other.referalCode, referalCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(referalCode);

  @JsonKey(ignore: true)
  @override
  _$CheckValidityCopyWith<_CheckValidity> get copyWith =>
      __$CheckValidityCopyWithImpl<_CheckValidity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String referalCode) checkValidity,
    required TResult Function() reset,
  }) {
    return checkValidity(referalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String referalCode)? checkValidity,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (checkValidity != null) {
      return checkValidity(referalCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckValidity value) checkValidity,
    required TResult Function(_Reset value) reset,
  }) {
    return checkValidity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckValidity value)? checkValidity,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (checkValidity != null) {
      return checkValidity(this);
    }
    return orElse();
  }
}

abstract class _CheckValidity implements ReferalCheckEvent {
  const factory _CheckValidity(String referalCode) = _$_CheckValidity;

  String get referalCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CheckValidityCopyWith<_CheckValidity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$ReferalCheckEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'ReferalCheckEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String referalCode) checkValidity,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String referalCode)? checkValidity,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckValidity value) checkValidity,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckValidity value)? checkValidity,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements ReferalCheckEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
class _$ReferalCheckStateTearOff {
  const _$ReferalCheckStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded() {
    return const _Loaded();
  }

  _Failed failed() {
    return const _Failed();
  }
}

/// @nodoc
const $ReferalCheckState = _$ReferalCheckStateTearOff();

/// @nodoc
mixin _$ReferalCheckState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferalCheckStateCopyWith<$Res> {
  factory $ReferalCheckStateCopyWith(
          ReferalCheckState value, $Res Function(ReferalCheckState) then) =
      _$ReferalCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReferalCheckStateCopyWithImpl<$Res>
    implements $ReferalCheckStateCopyWith<$Res> {
  _$ReferalCheckStateCopyWithImpl(this._value, this._then);

  final ReferalCheckState _value;
  // ignore: unused_field
  final $Res Function(ReferalCheckState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ReferalCheckStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ReferalCheckState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReferalCheckState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ReferalCheckStateCopyWithImpl<$Res>
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
    return 'ReferalCheckState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Loading implements ReferalCheckState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ReferalCheckStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'ReferalCheckState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() failed,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Loaded implements ReferalCheckState {
  const factory _Loaded() = _$_Loaded;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$ReferalCheckStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'ReferalCheckState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Failed implements ReferalCheckState {
  const factory _Failed() = _$_Failed;
}
