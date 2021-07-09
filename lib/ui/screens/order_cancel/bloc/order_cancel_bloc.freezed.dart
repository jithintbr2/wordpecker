// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_cancel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderCancelEventTearOff {
  const _$OrderCancelEventTearOff();

  _CancelOrder cancelOrder(int orderId, String? reason) {
    return _CancelOrder(
      orderId,
      reason,
    );
  }
}

/// @nodoc
const $OrderCancelEvent = _$OrderCancelEventTearOff();

/// @nodoc
mixin _$OrderCancelEvent {
  int get orderId => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId, String? reason) cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId, String? reason)? cancelOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelOrder value) cancelOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCancelEventCopyWith<OrderCancelEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCancelEventCopyWith<$Res> {
  factory $OrderCancelEventCopyWith(
          OrderCancelEvent value, $Res Function(OrderCancelEvent) then) =
      _$OrderCancelEventCopyWithImpl<$Res>;
  $Res call({int orderId, String? reason});
}

/// @nodoc
class _$OrderCancelEventCopyWithImpl<$Res>
    implements $OrderCancelEventCopyWith<$Res> {
  _$OrderCancelEventCopyWithImpl(this._value, this._then);

  final OrderCancelEvent _value;
  // ignore: unused_field
  final $Res Function(OrderCancelEvent) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CancelOrderCopyWith<$Res>
    implements $OrderCancelEventCopyWith<$Res> {
  factory _$CancelOrderCopyWith(
          _CancelOrder value, $Res Function(_CancelOrder) then) =
      __$CancelOrderCopyWithImpl<$Res>;
  @override
  $Res call({int orderId, String? reason});
}

/// @nodoc
class __$CancelOrderCopyWithImpl<$Res>
    extends _$OrderCancelEventCopyWithImpl<$Res>
    implements _$CancelOrderCopyWith<$Res> {
  __$CancelOrderCopyWithImpl(
      _CancelOrder _value, $Res Function(_CancelOrder) _then)
      : super(_value, (v) => _then(v as _CancelOrder));

  @override
  _CancelOrder get _value => super._value as _CancelOrder;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? reason = freezed,
  }) {
    return _then(_CancelOrder(
      orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CancelOrder implements _CancelOrder {
  const _$_CancelOrder(this.orderId, this.reason);

  @override
  final int orderId;
  @override
  final String? reason;

  @override
  String toString() {
    return 'OrderCancelEvent.cancelOrder(orderId: $orderId, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelOrder &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  _$CancelOrderCopyWith<_CancelOrder> get copyWith =>
      __$CancelOrderCopyWithImpl<_CancelOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId, String? reason) cancelOrder,
  }) {
    return cancelOrder(orderId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId, String? reason)? cancelOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(orderId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelOrder value) cancelOrder,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelOrder value)? cancelOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class _CancelOrder implements OrderCancelEvent {
  const factory _CancelOrder(int orderId, String? reason) = _$_CancelOrder;

  @override
  int get orderId => throw _privateConstructorUsedError;
  @override
  String? get reason => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CancelOrderCopyWith<_CancelOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrderCancelStateTearOff {
  const _$OrderCancelStateTearOff();

  _Idle idle() {
    return const _Idle();
  }

  _Busy busy() {
    return const _Busy();
  }
}

/// @nodoc
const $OrderCancelState = _$OrderCancelStateTearOff();

/// @nodoc
mixin _$OrderCancelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() busy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? busy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Busy value) busy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Busy value)? busy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCancelStateCopyWith<$Res> {
  factory $OrderCancelStateCopyWith(
          OrderCancelState value, $Res Function(OrderCancelState) then) =
      _$OrderCancelStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderCancelStateCopyWithImpl<$Res>
    implements $OrderCancelStateCopyWith<$Res> {
  _$OrderCancelStateCopyWithImpl(this._value, this._then);

  final OrderCancelState _value;
  // ignore: unused_field
  final $Res Function(OrderCancelState) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$OrderCancelStateCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle();

  @override
  String toString() {
    return 'OrderCancelState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() busy,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? busy,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Busy value) busy,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Busy value)? busy,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements OrderCancelState {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$BusyCopyWith<$Res> {
  factory _$BusyCopyWith(_Busy value, $Res Function(_Busy) then) =
      __$BusyCopyWithImpl<$Res>;
}

/// @nodoc
class __$BusyCopyWithImpl<$Res> extends _$OrderCancelStateCopyWithImpl<$Res>
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
    return 'OrderCancelState.busy()';
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
    required TResult Function() idle,
    required TResult Function() busy,
  }) {
    return busy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? busy,
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
    required TResult Function(_Idle value) idle,
    required TResult Function(_Busy value) busy,
  }) {
    return busy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Busy value)? busy,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy(this);
    }
    return orElse();
  }
}

abstract class _Busy implements OrderCancelState {
  const factory _Busy() = _$_Busy;
}
