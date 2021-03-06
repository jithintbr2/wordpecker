// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_preview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderPreviewEventTearOff {
  const _$OrderPreviewEventTearOff();

  _GetSupportingData getSupportingData(
      {required int franchiseId, required int addressId, required int shopId}) {
    return _GetSupportingData(
      franchiseId: franchiseId,
      addressId: addressId,
      shopId: shopId,
    );
  }
}

/// @nodoc
const $OrderPreviewEvent = _$OrderPreviewEventTearOff();

/// @nodoc
mixin _$OrderPreviewEvent {
  int get franchiseId => throw _privateConstructorUsedError;
  int get addressId => throw _privateConstructorUsedError;
  int get shopId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int franchiseId, int addressId, int shopId)
        getSupportingData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int franchiseId, int addressId, int shopId)?
        getSupportingData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSupportingData value) getSupportingData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSupportingData value)? getSupportingData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderPreviewEventCopyWith<OrderPreviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPreviewEventCopyWith<$Res> {
  factory $OrderPreviewEventCopyWith(
          OrderPreviewEvent value, $Res Function(OrderPreviewEvent) then) =
      _$OrderPreviewEventCopyWithImpl<$Res>;
  $Res call({int franchiseId, int addressId, int shopId});
}

/// @nodoc
class _$OrderPreviewEventCopyWithImpl<$Res>
    implements $OrderPreviewEventCopyWith<$Res> {
  _$OrderPreviewEventCopyWithImpl(this._value, this._then);

  final OrderPreviewEvent _value;
  // ignore: unused_field
  final $Res Function(OrderPreviewEvent) _then;

  @override
  $Res call({
    Object? franchiseId = freezed,
    Object? addressId = freezed,
    Object? shopId = freezed,
  }) {
    return _then(_value.copyWith(
      franchiseId: franchiseId == freezed
          ? _value.franchiseId
          : franchiseId // ignore: cast_nullable_to_non_nullable
              as int,
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GetSupportingDataCopyWith<$Res>
    implements $OrderPreviewEventCopyWith<$Res> {
  factory _$GetSupportingDataCopyWith(
          _GetSupportingData value, $Res Function(_GetSupportingData) then) =
      __$GetSupportingDataCopyWithImpl<$Res>;
  @override
  $Res call({int franchiseId, int addressId, int shopId});
}

/// @nodoc
class __$GetSupportingDataCopyWithImpl<$Res>
    extends _$OrderPreviewEventCopyWithImpl<$Res>
    implements _$GetSupportingDataCopyWith<$Res> {
  __$GetSupportingDataCopyWithImpl(
      _GetSupportingData _value, $Res Function(_GetSupportingData) _then)
      : super(_value, (v) => _then(v as _GetSupportingData));

  @override
  _GetSupportingData get _value => super._value as _GetSupportingData;

  @override
  $Res call({
    Object? franchiseId = freezed,
    Object? addressId = freezed,
    Object? shopId = freezed,
  }) {
    return _then(_GetSupportingData(
      franchiseId: franchiseId == freezed
          ? _value.franchiseId
          : franchiseId // ignore: cast_nullable_to_non_nullable
              as int,
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetSupportingData
    with DiagnosticableTreeMixin
    implements _GetSupportingData {
  const _$_GetSupportingData(
      {required this.franchiseId,
      required this.addressId,
      required this.shopId});

  @override
  final int franchiseId;
  @override
  final int addressId;
  @override
  final int shopId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderPreviewEvent.getSupportingData(franchiseId: $franchiseId, addressId: $addressId, shopId: $shopId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderPreviewEvent.getSupportingData'))
      ..add(DiagnosticsProperty('franchiseId', franchiseId))
      ..add(DiagnosticsProperty('addressId', addressId))
      ..add(DiagnosticsProperty('shopId', shopId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSupportingData &&
            (identical(other.franchiseId, franchiseId) ||
                const DeepCollectionEquality()
                    .equals(other.franchiseId, franchiseId)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.shopId, shopId) ||
                const DeepCollectionEquality().equals(other.shopId, shopId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(franchiseId) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(shopId);

  @JsonKey(ignore: true)
  @override
  _$GetSupportingDataCopyWith<_GetSupportingData> get copyWith =>
      __$GetSupportingDataCopyWithImpl<_GetSupportingData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int franchiseId, int addressId, int shopId)
        getSupportingData,
  }) {
    return getSupportingData(franchiseId, addressId, shopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int franchiseId, int addressId, int shopId)?
        getSupportingData,
    required TResult orElse(),
  }) {
    if (getSupportingData != null) {
      return getSupportingData(franchiseId, addressId, shopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSupportingData value) getSupportingData,
  }) {
    return getSupportingData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSupportingData value)? getSupportingData,
    required TResult orElse(),
  }) {
    if (getSupportingData != null) {
      return getSupportingData(this);
    }
    return orElse();
  }
}

abstract class _GetSupportingData implements OrderPreviewEvent {
  const factory _GetSupportingData(
      {required int franchiseId,
      required int addressId,
      required int shopId}) = _$_GetSupportingData;

  @override
  int get franchiseId => throw _privateConstructorUsedError;
  @override
  int get addressId => throw _privateConstructorUsedError;
  @override
  int get shopId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetSupportingDataCopyWith<_GetSupportingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrderPreviewStateTearOff {
  const _$OrderPreviewStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(OrderPreviewModel data) {
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
const $OrderPreviewState = _$OrderPreviewStateTearOff();

/// @nodoc
mixin _$OrderPreviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(OrderPreviewModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(OrderPreviewModel data)? loaded,
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
abstract class $OrderPreviewStateCopyWith<$Res> {
  factory $OrderPreviewStateCopyWith(
          OrderPreviewState value, $Res Function(OrderPreviewState) then) =
      _$OrderPreviewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderPreviewStateCopyWithImpl<$Res>
    implements $OrderPreviewStateCopyWith<$Res> {
  _$OrderPreviewStateCopyWithImpl(this._value, this._then);

  final OrderPreviewState _value;
  // ignore: unused_field
  final $Res Function(OrderPreviewState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$OrderPreviewStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderPreviewState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OrderPreviewState.loading'));
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
    required TResult Function(OrderPreviewModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(OrderPreviewModel data)? loaded,
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

abstract class _Loading implements OrderPreviewState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({OrderPreviewModel data});

  $OrderPreviewModelCopyWith<$Res> get data;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$OrderPreviewStateCopyWithImpl<$Res>
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
              as OrderPreviewModel,
    ));
  }

  @override
  $OrderPreviewModelCopyWith<$Res> get data {
    return $OrderPreviewModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_Loaded with DiagnosticableTreeMixin implements _Loaded {
  const _$_Loaded(this.data);

  @override
  final OrderPreviewModel data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderPreviewState.loaded(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderPreviewState.loaded'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(OrderPreviewModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(OrderPreviewModel data)? loaded,
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

abstract class _Loaded implements OrderPreviewState {
  const factory _Loaded(OrderPreviewModel data) = _$_Loaded;

  OrderPreviewModel get data => throw _privateConstructorUsedError;
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
class __$FailedCopyWithImpl<$Res> extends _$OrderPreviewStateCopyWithImpl<$Res>
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

class _$_Failed with DiagnosticableTreeMixin implements _Failed {
  const _$_Failed(this.exceptions);

  @override
  final NetworkExceptions exceptions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderPreviewState.failed(exceptions: $exceptions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderPreviewState.failed'))
      ..add(DiagnosticsProperty('exceptions', exceptions));
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
    required TResult Function(OrderPreviewModel data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return failed(exceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(OrderPreviewModel data)? loaded,
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

abstract class _Failed implements OrderPreviewState {
  const factory _Failed(NetworkExceptions exceptions) = _$_Failed;

  NetworkExceptions get exceptions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
