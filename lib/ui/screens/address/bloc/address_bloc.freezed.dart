// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddressEventTearOff {
  const _$AddressEventTearOff();

  _FetchSavedAddress fetchSavedAddress() {
    return const _FetchSavedAddress();
  }

  _DeleteAddress deleteAddress(AddressModel address) {
    return _DeleteAddress(
      address,
    );
  }

  _SelectAddress selectAddress(AddressModel address, bool shouldReturn) {
    return _SelectAddress(
      address,
      shouldReturn,
    );
  }

  _EmitLoad emitLoad() {
    return const _EmitLoad();
  }
}

/// @nodoc
const $AddressEvent = _$AddressEventTearOff();

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedAddress,
    required TResult Function(AddressModel address) deleteAddress,
    required TResult Function(AddressModel address, bool shouldReturn)
        selectAddress,
    required TResult Function() emitLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedAddress,
    TResult Function(AddressModel address)? deleteAddress,
    TResult Function(AddressModel address, bool shouldReturn)? selectAddress,
    TResult Function()? emitLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSavedAddress value) fetchSavedAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
    required TResult Function(_SelectAddress value) selectAddress,
    required TResult Function(_EmitLoad value) emitLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSavedAddress value)? fetchSavedAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    TResult Function(_SelectAddress value)? selectAddress,
    TResult Function(_EmitLoad value)? emitLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res> implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

  final AddressEvent _value;
  // ignore: unused_field
  final $Res Function(AddressEvent) _then;
}

/// @nodoc
abstract class _$FetchSavedAddressCopyWith<$Res> {
  factory _$FetchSavedAddressCopyWith(
          _FetchSavedAddress value, $Res Function(_FetchSavedAddress) then) =
      __$FetchSavedAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchSavedAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res>
    implements _$FetchSavedAddressCopyWith<$Res> {
  __$FetchSavedAddressCopyWithImpl(
      _FetchSavedAddress _value, $Res Function(_FetchSavedAddress) _then)
      : super(_value, (v) => _then(v as _FetchSavedAddress));

  @override
  _FetchSavedAddress get _value => super._value as _FetchSavedAddress;
}

/// @nodoc

class _$_FetchSavedAddress implements _FetchSavedAddress {
  const _$_FetchSavedAddress();

  @override
  String toString() {
    return 'AddressEvent.fetchSavedAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchSavedAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedAddress,
    required TResult Function(AddressModel address) deleteAddress,
    required TResult Function(AddressModel address, bool shouldReturn)
        selectAddress,
    required TResult Function() emitLoad,
  }) {
    return fetchSavedAddress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedAddress,
    TResult Function(AddressModel address)? deleteAddress,
    TResult Function(AddressModel address, bool shouldReturn)? selectAddress,
    TResult Function()? emitLoad,
    required TResult orElse(),
  }) {
    if (fetchSavedAddress != null) {
      return fetchSavedAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSavedAddress value) fetchSavedAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
    required TResult Function(_SelectAddress value) selectAddress,
    required TResult Function(_EmitLoad value) emitLoad,
  }) {
    return fetchSavedAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSavedAddress value)? fetchSavedAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    TResult Function(_SelectAddress value)? selectAddress,
    TResult Function(_EmitLoad value)? emitLoad,
    required TResult orElse(),
  }) {
    if (fetchSavedAddress != null) {
      return fetchSavedAddress(this);
    }
    return orElse();
  }
}

abstract class _FetchSavedAddress implements AddressEvent {
  const factory _FetchSavedAddress() = _$_FetchSavedAddress;
}

/// @nodoc
abstract class _$DeleteAddressCopyWith<$Res> {
  factory _$DeleteAddressCopyWith(
          _DeleteAddress value, $Res Function(_DeleteAddress) then) =
      __$DeleteAddressCopyWithImpl<$Res>;
  $Res call({AddressModel address});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$DeleteAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res>
    implements _$DeleteAddressCopyWith<$Res> {
  __$DeleteAddressCopyWithImpl(
      _DeleteAddress _value, $Res Function(_DeleteAddress) _then)
      : super(_value, (v) => _then(v as _DeleteAddress));

  @override
  _DeleteAddress get _value => super._value as _DeleteAddress;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_DeleteAddress(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }

  @override
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$_DeleteAddress implements _DeleteAddress {
  const _$_DeleteAddress(this.address);

  @override
  final AddressModel address;

  @override
  String toString() {
    return 'AddressEvent.deleteAddress(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteAddress &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$DeleteAddressCopyWith<_DeleteAddress> get copyWith =>
      __$DeleteAddressCopyWithImpl<_DeleteAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedAddress,
    required TResult Function(AddressModel address) deleteAddress,
    required TResult Function(AddressModel address, bool shouldReturn)
        selectAddress,
    required TResult Function() emitLoad,
  }) {
    return deleteAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedAddress,
    TResult Function(AddressModel address)? deleteAddress,
    TResult Function(AddressModel address, bool shouldReturn)? selectAddress,
    TResult Function()? emitLoad,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSavedAddress value) fetchSavedAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
    required TResult Function(_SelectAddress value) selectAddress,
    required TResult Function(_EmitLoad value) emitLoad,
  }) {
    return deleteAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSavedAddress value)? fetchSavedAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    TResult Function(_SelectAddress value)? selectAddress,
    TResult Function(_EmitLoad value)? emitLoad,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(this);
    }
    return orElse();
  }
}

abstract class _DeleteAddress implements AddressEvent {
  const factory _DeleteAddress(AddressModel address) = _$_DeleteAddress;

  AddressModel get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteAddressCopyWith<_DeleteAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectAddressCopyWith<$Res> {
  factory _$SelectAddressCopyWith(
          _SelectAddress value, $Res Function(_SelectAddress) then) =
      __$SelectAddressCopyWithImpl<$Res>;
  $Res call({AddressModel address, bool shouldReturn});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$SelectAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res>
    implements _$SelectAddressCopyWith<$Res> {
  __$SelectAddressCopyWithImpl(
      _SelectAddress _value, $Res Function(_SelectAddress) _then)
      : super(_value, (v) => _then(v as _SelectAddress));

  @override
  _SelectAddress get _value => super._value as _SelectAddress;

  @override
  $Res call({
    Object? address = freezed,
    Object? shouldReturn = freezed,
  }) {
    return _then(_SelectAddress(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      shouldReturn == freezed
          ? _value.shouldReturn
          : shouldReturn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$_SelectAddress implements _SelectAddress {
  const _$_SelectAddress(this.address, this.shouldReturn);

  @override
  final AddressModel address;
  @override
  final bool shouldReturn;

  @override
  String toString() {
    return 'AddressEvent.selectAddress(address: $address, shouldReturn: $shouldReturn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectAddress &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.shouldReturn, shouldReturn) ||
                const DeepCollectionEquality()
                    .equals(other.shouldReturn, shouldReturn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(shouldReturn);

  @JsonKey(ignore: true)
  @override
  _$SelectAddressCopyWith<_SelectAddress> get copyWith =>
      __$SelectAddressCopyWithImpl<_SelectAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedAddress,
    required TResult Function(AddressModel address) deleteAddress,
    required TResult Function(AddressModel address, bool shouldReturn)
        selectAddress,
    required TResult Function() emitLoad,
  }) {
    return selectAddress(address, shouldReturn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedAddress,
    TResult Function(AddressModel address)? deleteAddress,
    TResult Function(AddressModel address, bool shouldReturn)? selectAddress,
    TResult Function()? emitLoad,
    required TResult orElse(),
  }) {
    if (selectAddress != null) {
      return selectAddress(address, shouldReturn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSavedAddress value) fetchSavedAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
    required TResult Function(_SelectAddress value) selectAddress,
    required TResult Function(_EmitLoad value) emitLoad,
  }) {
    return selectAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSavedAddress value)? fetchSavedAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    TResult Function(_SelectAddress value)? selectAddress,
    TResult Function(_EmitLoad value)? emitLoad,
    required TResult orElse(),
  }) {
    if (selectAddress != null) {
      return selectAddress(this);
    }
    return orElse();
  }
}

abstract class _SelectAddress implements AddressEvent {
  const factory _SelectAddress(AddressModel address, bool shouldReturn) =
      _$_SelectAddress;

  AddressModel get address => throw _privateConstructorUsedError;
  bool get shouldReturn => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectAddressCopyWith<_SelectAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmitLoadCopyWith<$Res> {
  factory _$EmitLoadCopyWith(_EmitLoad value, $Res Function(_EmitLoad) then) =
      __$EmitLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmitLoadCopyWithImpl<$Res> extends _$AddressEventCopyWithImpl<$Res>
    implements _$EmitLoadCopyWith<$Res> {
  __$EmitLoadCopyWithImpl(_EmitLoad _value, $Res Function(_EmitLoad) _then)
      : super(_value, (v) => _then(v as _EmitLoad));

  @override
  _EmitLoad get _value => super._value as _EmitLoad;
}

/// @nodoc

class _$_EmitLoad implements _EmitLoad {
  const _$_EmitLoad();

  @override
  String toString() {
    return 'AddressEvent.emitLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmitLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedAddress,
    required TResult Function(AddressModel address) deleteAddress,
    required TResult Function(AddressModel address, bool shouldReturn)
        selectAddress,
    required TResult Function() emitLoad,
  }) {
    return emitLoad();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedAddress,
    TResult Function(AddressModel address)? deleteAddress,
    TResult Function(AddressModel address, bool shouldReturn)? selectAddress,
    TResult Function()? emitLoad,
    required TResult orElse(),
  }) {
    if (emitLoad != null) {
      return emitLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSavedAddress value) fetchSavedAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
    required TResult Function(_SelectAddress value) selectAddress,
    required TResult Function(_EmitLoad value) emitLoad,
  }) {
    return emitLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSavedAddress value)? fetchSavedAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    TResult Function(_SelectAddress value)? selectAddress,
    TResult Function(_EmitLoad value)? emitLoad,
    required TResult orElse(),
  }) {
    if (emitLoad != null) {
      return emitLoad(this);
    }
    return orElse();
  }
}

abstract class _EmitLoad implements AddressEvent {
  const factory _EmitLoad() = _$_EmitLoad;
}

/// @nodoc
class _$AddressStateTearOff {
  const _$AddressStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<AddressModel> data) {
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
const $AddressState = _$AddressStateTearOff();

/// @nodoc
mixin _$AddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AddressModel> data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AddressModel> data)? loaded,
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
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res> implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  final AddressState _value;
  // ignore: unused_field
  final $Res Function(AddressState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$AddressStateCopyWithImpl<$Res>
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
    return 'AddressState.loading()';
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
    required TResult Function(List<AddressModel> data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AddressModel> data)? loaded,
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

abstract class _Loading implements AddressState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<AddressModel> data});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$AddressStateCopyWithImpl<$Res>
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
              as List<AddressModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.data);

  @override
  final List<AddressModel> data;

  @override
  String toString() {
    return 'AddressState.loaded(data: $data)';
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
    required TResult Function(List<AddressModel> data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AddressModel> data)? loaded,
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

abstract class _Loaded implements AddressState {
  const factory _Loaded(List<AddressModel> data) = _$_Loaded;

  List<AddressModel> get data => throw _privateConstructorUsedError;
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
class __$FailedCopyWithImpl<$Res> extends _$AddressStateCopyWithImpl<$Res>
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
    return 'AddressState.failed(exceptions: $exceptions)';
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
    required TResult Function(List<AddressModel> data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return failed(exceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AddressModel> data)? loaded,
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

abstract class _Failed implements AddressState {
  const factory _Failed(NetworkExceptions exceptions) = _$_Failed;

  NetworkExceptions get exceptions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
