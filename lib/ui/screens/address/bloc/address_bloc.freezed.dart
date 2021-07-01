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

  _DeleteAddress deleteAddress() {
    return const _DeleteAddress();
  }
}

/// @nodoc
const $AddressEvent = _$AddressEventTearOff();

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedAddress,
    required TResult Function() deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedAddress,
    TResult Function()? deleteAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSavedAddress value) fetchSavedAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSavedAddress value)? fetchSavedAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
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
    required TResult Function() deleteAddress,
  }) {
    return fetchSavedAddress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedAddress,
    TResult Function()? deleteAddress,
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
  }) {
    return fetchSavedAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSavedAddress value)? fetchSavedAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
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
}

/// @nodoc

class _$_DeleteAddress implements _DeleteAddress {
  const _$_DeleteAddress();

  @override
  String toString() {
    return 'AddressEvent.deleteAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedAddress,
    required TResult Function() deleteAddress,
  }) {
    return deleteAddress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedAddress,
    TResult Function()? deleteAddress,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSavedAddress value) fetchSavedAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) {
    return deleteAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSavedAddress value)? fetchSavedAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(this);
    }
    return orElse();
  }
}

abstract class _DeleteAddress implements AddressEvent {
  const factory _DeleteAddress() = _$_DeleteAddress;
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
}

/// @nodoc
const $AddressState = _$AddressStateTearOff();

/// @nodoc
mixin _$AddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AddressModel> data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AddressModel> data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
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
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AddressModel> data)? loaded,
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
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
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
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AddressModel> data)? loaded,
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
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
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
