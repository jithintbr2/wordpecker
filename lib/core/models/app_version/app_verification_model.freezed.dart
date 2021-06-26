// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_verification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppVerificationModelTearOff {
  const _$AppVerificationModelTearOff();

  _AppVerificationModel call(
      {required bool updateAvailable, required bool verified}) {
    return _AppVerificationModel(
      updateAvailable: updateAvailable,
      verified: verified,
    );
  }
}

/// @nodoc
const $AppVerificationModel = _$AppVerificationModelTearOff();

/// @nodoc
mixin _$AppVerificationModel {
  bool get updateAvailable => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVerificationModelCopyWith<AppVerificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVerificationModelCopyWith<$Res> {
  factory $AppVerificationModelCopyWith(AppVerificationModel value,
          $Res Function(AppVerificationModel) then) =
      _$AppVerificationModelCopyWithImpl<$Res>;
  $Res call({bool updateAvailable, bool verified});
}

/// @nodoc
class _$AppVerificationModelCopyWithImpl<$Res>
    implements $AppVerificationModelCopyWith<$Res> {
  _$AppVerificationModelCopyWithImpl(this._value, this._then);

  final AppVerificationModel _value;
  // ignore: unused_field
  final $Res Function(AppVerificationModel) _then;

  @override
  $Res call({
    Object? updateAvailable = freezed,
    Object? verified = freezed,
  }) {
    return _then(_value.copyWith(
      updateAvailable: updateAvailable == freezed
          ? _value.updateAvailable
          : updateAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AppVerificationModelCopyWith<$Res>
    implements $AppVerificationModelCopyWith<$Res> {
  factory _$AppVerificationModelCopyWith(_AppVerificationModel value,
          $Res Function(_AppVerificationModel) then) =
      __$AppVerificationModelCopyWithImpl<$Res>;
  @override
  $Res call({bool updateAvailable, bool verified});
}

/// @nodoc
class __$AppVerificationModelCopyWithImpl<$Res>
    extends _$AppVerificationModelCopyWithImpl<$Res>
    implements _$AppVerificationModelCopyWith<$Res> {
  __$AppVerificationModelCopyWithImpl(
      _AppVerificationModel _value, $Res Function(_AppVerificationModel) _then)
      : super(_value, (v) => _then(v as _AppVerificationModel));

  @override
  _AppVerificationModel get _value => super._value as _AppVerificationModel;

  @override
  $Res call({
    Object? updateAvailable = freezed,
    Object? verified = freezed,
  }) {
    return _then(_AppVerificationModel(
      updateAvailable: updateAvailable == freezed
          ? _value.updateAvailable
          : updateAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppVerificationModel implements _AppVerificationModel {
  const _$_AppVerificationModel(
      {required this.updateAvailable, required this.verified});

  @override
  final bool updateAvailable;
  @override
  final bool verified;

  @override
  String toString() {
    return 'AppVerificationModel(updateAvailable: $updateAvailable, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppVerificationModel &&
            (identical(other.updateAvailable, updateAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.updateAvailable, updateAvailable)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updateAvailable) ^
      const DeepCollectionEquality().hash(verified);

  @JsonKey(ignore: true)
  @override
  _$AppVerificationModelCopyWith<_AppVerificationModel> get copyWith =>
      __$AppVerificationModelCopyWithImpl<_AppVerificationModel>(
          this, _$identity);
}

abstract class _AppVerificationModel implements AppVerificationModel {
  const factory _AppVerificationModel(
      {required bool updateAvailable,
      required bool verified}) = _$_AppVerificationModel;

  @override
  bool get updateAvailable => throw _privateConstructorUsedError;
  @override
  bool get verified => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppVerificationModelCopyWith<_AppVerificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
