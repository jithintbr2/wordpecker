// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_item_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestItemHistoryEventTearOff {
  const _$RequestItemHistoryEventTearOff();

  _GetData getData() {
    return const _GetData();
  }
}

/// @nodoc
const $RequestItemHistoryEvent = _$RequestItemHistoryEventTearOff();

/// @nodoc
mixin _$RequestItemHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
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
}

/// @nodoc
abstract class $RequestItemHistoryEventCopyWith<$Res> {
  factory $RequestItemHistoryEventCopyWith(RequestItemHistoryEvent value,
          $Res Function(RequestItemHistoryEvent) then) =
      _$RequestItemHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestItemHistoryEventCopyWithImpl<$Res>
    implements $RequestItemHistoryEventCopyWith<$Res> {
  _$RequestItemHistoryEventCopyWithImpl(this._value, this._then);

  final RequestItemHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(RequestItemHistoryEvent) _then;
}

/// @nodoc
abstract class _$GetDataCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) then) =
      __$GetDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDataCopyWithImpl<$Res>
    extends _$RequestItemHistoryEventCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(_GetData _value, $Res Function(_GetData) _then)
      : super(_value, (v) => _then(v as _GetData));

  @override
  _GetData get _value => super._value as _GetData;
}

/// @nodoc

class _$_GetData implements _GetData {
  const _$_GetData();

  @override
  String toString() {
    return 'RequestItemHistoryEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
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

abstract class _GetData implements RequestItemHistoryEvent {
  const factory _GetData() = _$_GetData;
}

/// @nodoc
class _$RequestItemHistoryStateTearOff {
  const _$RequestItemHistoryStateTearOff();

  _Busy busy() {
    return const _Busy();
  }

  _Idle idle(List<RequestItemModel> data) {
    return _Idle(
      data,
    );
  }
}

/// @nodoc
const $RequestItemHistoryState = _$RequestItemHistoryStateTearOff();

/// @nodoc
mixin _$RequestItemHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() busy,
    required TResult Function(List<RequestItemModel> data) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function(List<RequestItemModel> data)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Busy value) busy,
    required TResult Function(_Idle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Busy value)? busy,
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestItemHistoryStateCopyWith<$Res> {
  factory $RequestItemHistoryStateCopyWith(RequestItemHistoryState value,
          $Res Function(RequestItemHistoryState) then) =
      _$RequestItemHistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestItemHistoryStateCopyWithImpl<$Res>
    implements $RequestItemHistoryStateCopyWith<$Res> {
  _$RequestItemHistoryStateCopyWithImpl(this._value, this._then);

  final RequestItemHistoryState _value;
  // ignore: unused_field
  final $Res Function(RequestItemHistoryState) _then;
}

/// @nodoc
abstract class _$BusyCopyWith<$Res> {
  factory _$BusyCopyWith(_Busy value, $Res Function(_Busy) then) =
      __$BusyCopyWithImpl<$Res>;
}

/// @nodoc
class __$BusyCopyWithImpl<$Res>
    extends _$RequestItemHistoryStateCopyWithImpl<$Res>
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
    return 'RequestItemHistoryState.busy()';
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
    required TResult Function(List<RequestItemModel> data) idle,
  }) {
    return busy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function(List<RequestItemModel> data)? idle,
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
  }) {
    return busy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Busy value)? busy,
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy(this);
    }
    return orElse();
  }
}

abstract class _Busy implements RequestItemHistoryState {
  const factory _Busy() = _$_Busy;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
  $Res call({List<RequestItemModel> data});
}

/// @nodoc
class __$IdleCopyWithImpl<$Res>
    extends _$RequestItemHistoryStateCopyWithImpl<$Res>
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
              as List<RequestItemModel>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(this.data);

  @override
  final List<RequestItemModel> data;

  @override
  String toString() {
    return 'RequestItemHistoryState.idle(data: $data)';
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
    required TResult Function(List<RequestItemModel> data) idle,
  }) {
    return idle(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function(List<RequestItemModel> data)? idle,
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
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Busy value)? busy,
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements RequestItemHistoryState {
  const factory _Idle(List<RequestItemModel> data) = _$_Idle;

  List<RequestItemModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IdleCopyWith<_Idle> get copyWith => throw _privateConstructorUsedError;
}
