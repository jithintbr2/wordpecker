// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestDetailsEventTearOff {
  const _$RequestDetailsEventTearOff();

  _GetData getData(int requestId) {
    return _GetData(
      requestId,
    );
  }
}

/// @nodoc
const $RequestDetailsEvent = _$RequestDetailsEventTearOff();

/// @nodoc
mixin _$RequestDetailsEvent {
  int get requestId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestDetailsEventCopyWith<RequestDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDetailsEventCopyWith<$Res> {
  factory $RequestDetailsEventCopyWith(
          RequestDetailsEvent value, $Res Function(RequestDetailsEvent) then) =
      _$RequestDetailsEventCopyWithImpl<$Res>;
  $Res call({int requestId});
}

/// @nodoc
class _$RequestDetailsEventCopyWithImpl<$Res>
    implements $RequestDetailsEventCopyWith<$Res> {
  _$RequestDetailsEventCopyWithImpl(this._value, this._then);

  final RequestDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(RequestDetailsEvent) _then;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GetDataCopyWith<$Res>
    implements $RequestDetailsEventCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) then) =
      __$GetDataCopyWithImpl<$Res>;
  @override
  $Res call({int requestId});
}

/// @nodoc
class __$GetDataCopyWithImpl<$Res>
    extends _$RequestDetailsEventCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(_GetData _value, $Res Function(_GetData) _then)
      : super(_value, (v) => _then(v as _GetData));

  @override
  _GetData get _value => super._value as _GetData;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_GetData(
      requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetData implements _GetData {
  const _$_GetData(this.requestId);

  @override
  final int requestId;

  @override
  String toString() {
    return 'RequestDetailsEvent.getData(requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetData &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestId);

  @JsonKey(ignore: true)
  @override
  _$GetDataCopyWith<_GetData> get copyWith =>
      __$GetDataCopyWithImpl<_GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getData,
  }) {
    return getData(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements RequestDetailsEvent {
  const factory _GetData(int requestId) = _$_GetData;

  @override
  int get requestId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetDataCopyWith<_GetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RequestDetailsStateTearOff {
  const _$RequestDetailsStateTearOff();

  _Busy busy() {
    return const _Busy();
  }

  _Idle idle(RequestDetailsModel data) {
    return _Idle(
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
const $RequestDetailsState = _$RequestDetailsStateTearOff();

/// @nodoc
mixin _$RequestDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() busy,
    required TResult Function(RequestDetailsModel data) idle,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function(RequestDetailsModel data)? idle,
    TResult Function(NetworkExceptions exceptions)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Busy value) busy,
    required TResult Function(_Idle value) idle,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Busy value)? busy,
    TResult Function(_Idle value)? idle,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDetailsStateCopyWith<$Res> {
  factory $RequestDetailsStateCopyWith(
          RequestDetailsState value, $Res Function(RequestDetailsState) then) =
      _$RequestDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestDetailsStateCopyWithImpl<$Res>
    implements $RequestDetailsStateCopyWith<$Res> {
  _$RequestDetailsStateCopyWithImpl(this._value, this._then);

  final RequestDetailsState _value;
  // ignore: unused_field
  final $Res Function(RequestDetailsState) _then;
}

/// @nodoc
abstract class _$BusyCopyWith<$Res> {
  factory _$BusyCopyWith(_Busy value, $Res Function(_Busy) then) =
      __$BusyCopyWithImpl<$Res>;
}

/// @nodoc
class __$BusyCopyWithImpl<$Res> extends _$RequestDetailsStateCopyWithImpl<$Res>
    implements _$BusyCopyWith<$Res> {
  __$BusyCopyWithImpl(_Busy _value, $Res Function(_Busy) _then)
      : super(_value, (v) => _then(v as _Busy));

  @override
  _Busy get _value => super._value as _Busy;
}

/// @nodoc

class _$_Busy implements _Busy {
  const _$_Busy();

  @override
  String toString() {
    return 'RequestDetailsState.busy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Busy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() busy,
    required TResult Function(RequestDetailsModel data) idle,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return busy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function(RequestDetailsModel data)? idle,
    TResult Function(NetworkExceptions exceptions)? failed,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Busy value) busy,
    required TResult Function(_Idle value) idle,
    required TResult Function(_Failed value) failed,
  }) {
    return busy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Busy value)? busy,
    TResult Function(_Idle value)? idle,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy(this);
    }
    return orElse();
  }
}

abstract class _Busy implements RequestDetailsState {
  const factory _Busy() = _$_Busy;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
  $Res call({RequestDetailsModel data});

  $RequestDetailsModelCopyWith<$Res> get data;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$RequestDetailsStateCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Idle(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RequestDetailsModel,
    ));
  }

  @override
  $RequestDetailsModelCopyWith<$Res> get data {
    return $RequestDetailsModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(this.data);

  @override
  final RequestDetailsModel data;

  @override
  String toString() {
    return 'RequestDetailsState.idle(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Idle &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$IdleCopyWith<_Idle> get copyWith =>
      __$IdleCopyWithImpl<_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() busy,
    required TResult Function(RequestDetailsModel data) idle,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return idle(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function(RequestDetailsModel data)? idle,
    TResult Function(NetworkExceptions exceptions)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Busy value) busy,
    required TResult Function(_Idle value) idle,
    required TResult Function(_Failed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Busy value)? busy,
    TResult Function(_Idle value)? idle,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements RequestDetailsState {
  const factory _Idle(RequestDetailsModel data) = _$_Idle;

  RequestDetailsModel get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IdleCopyWith<_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({NetworkExceptions exceptions});

  $NetworkExceptionsCopyWith<$Res> get exceptions;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res>
    extends _$RequestDetailsStateCopyWithImpl<$Res>
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
    return 'RequestDetailsState.failed(exceptions: $exceptions)';
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
    required TResult Function() busy,
    required TResult Function(RequestDetailsModel data) idle,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return failed(exceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function(RequestDetailsModel data)? idle,
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
    required TResult Function(_Busy value) busy,
    required TResult Function(_Idle value) idle,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Busy value)? busy,
    TResult Function(_Idle value)? idle,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements RequestDetailsState {
  const factory _Failed(NetworkExceptions exceptions) = _$_Failed;

  NetworkExceptions get exceptions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
