// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _Unknown unknown() {
    return const _Unknown();
  }

  _UnAuthorized unAuthorized({required bool updateAvailable}) {
    return _UnAuthorized(
      updateAvailable: updateAvailable,
    );
  }

  _Authorized authorized(
      {required UserModel user, required bool updateAvailable}) {
    return _Authorized(
      user: user,
      updateAvailable: updateAvailable,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(bool updateAvailable) unAuthorized,
    required TResult Function(UserModel user, bool updateAvailable) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(bool updateAvailable)? unAuthorized,
    TResult Function(UserModel user, bool updateAvailable)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Authorized value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Authorized value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'AuthenticationState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(bool updateAvailable) unAuthorized,
    required TResult Function(UserModel user, bool updateAvailable) authorized,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(bool updateAvailable)? unAuthorized,
    TResult Function(UserModel user, bool updateAvailable)? authorized,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Authorized value) authorized,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Authorized value)? authorized,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AuthenticationState {
  const factory _Unknown() = _$_Unknown;
}

/// @nodoc
abstract class _$UnAuthorizedCopyWith<$Res> {
  factory _$UnAuthorizedCopyWith(
          _UnAuthorized value, $Res Function(_UnAuthorized) then) =
      __$UnAuthorizedCopyWithImpl<$Res>;
  $Res call({bool updateAvailable});
}

/// @nodoc
class __$UnAuthorizedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$UnAuthorizedCopyWith<$Res> {
  __$UnAuthorizedCopyWithImpl(
      _UnAuthorized _value, $Res Function(_UnAuthorized) _then)
      : super(_value, (v) => _then(v as _UnAuthorized));

  @override
  _UnAuthorized get _value => super._value as _UnAuthorized;

  @override
  $Res call({
    Object? updateAvailable = freezed,
  }) {
    return _then(_UnAuthorized(
      updateAvailable: updateAvailable == freezed
          ? _value.updateAvailable
          : updateAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UnAuthorized implements _UnAuthorized {
  const _$_UnAuthorized({required this.updateAvailable});

  @override
  final bool updateAvailable;

  @override
  String toString() {
    return 'AuthenticationState.unAuthorized(updateAvailable: $updateAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnAuthorized &&
            (identical(other.updateAvailable, updateAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.updateAvailable, updateAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updateAvailable);

  @JsonKey(ignore: true)
  @override
  _$UnAuthorizedCopyWith<_UnAuthorized> get copyWith =>
      __$UnAuthorizedCopyWithImpl<_UnAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(bool updateAvailable) unAuthorized,
    required TResult Function(UserModel user, bool updateAvailable) authorized,
  }) {
    return unAuthorized(updateAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(bool updateAvailable)? unAuthorized,
    TResult Function(UserModel user, bool updateAvailable)? authorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(updateAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Authorized value) authorized,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Authorized value)? authorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements AuthenticationState {
  const factory _UnAuthorized({required bool updateAvailable}) =
      _$_UnAuthorized;

  bool get updateAvailable => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnAuthorizedCopyWith<_UnAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthorizedCopyWith<$Res> {
  factory _$AuthorizedCopyWith(
          _Authorized value, $Res Function(_Authorized) then) =
      __$AuthorizedCopyWithImpl<$Res>;
  $Res call({UserModel user, bool updateAvailable});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthorizedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthorizedCopyWith<$Res> {
  __$AuthorizedCopyWithImpl(
      _Authorized _value, $Res Function(_Authorized) _then)
      : super(_value, (v) => _then(v as _Authorized));

  @override
  _Authorized get _value => super._value as _Authorized;

  @override
  $Res call({
    Object? user = freezed,
    Object? updateAvailable = freezed,
  }) {
    return _then(_Authorized(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      updateAvailable: updateAvailable == freezed
          ? _value.updateAvailable
          : updateAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Authorized implements _Authorized {
  const _$_Authorized({required this.user, required this.updateAvailable});

  @override
  final UserModel user;
  @override
  final bool updateAvailable;

  @override
  String toString() {
    return 'AuthenticationState.authorized(user: $user, updateAvailable: $updateAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authorized &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.updateAvailable, updateAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.updateAvailable, updateAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(updateAvailable);

  @JsonKey(ignore: true)
  @override
  _$AuthorizedCopyWith<_Authorized> get copyWith =>
      __$AuthorizedCopyWithImpl<_Authorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(bool updateAvailable) unAuthorized,
    required TResult Function(UserModel user, bool updateAvailable) authorized,
  }) {
    return authorized(user, updateAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(bool updateAvailable)? unAuthorized,
    TResult Function(UserModel user, bool updateAvailable)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(user, updateAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Authorized value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Authorized value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized implements AuthenticationState {
  const factory _Authorized(
      {required UserModel user, required bool updateAvailable}) = _$_Authorized;

  UserModel get user => throw _privateConstructorUsedError;
  bool get updateAvailable => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthorizedCopyWith<_Authorized> get copyWith =>
      throw _privateConstructorUsedError;
}
