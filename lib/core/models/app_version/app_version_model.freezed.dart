// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppVersionModel _$AppVersionModelFromJson(Map<String, dynamic> json) {
  return _AppVersionModel.fromJson(json);
}

/// @nodoc
class _$AppVersionModelTearOff {
  const _$AppVersionModelTearOff();

  _AppVersionModel call({String? currentVersion, String? minimumVersion}) {
    return _AppVersionModel(
      currentVersion: currentVersion,
      minimumVersion: minimumVersion,
    );
  }

  AppVersionModel fromJson(Map<String, Object> json) {
    return AppVersionModel.fromJson(json);
  }
}

/// @nodoc
const $AppVersionModel = _$AppVersionModelTearOff();

/// @nodoc
mixin _$AppVersionModel {
  String? get currentVersion => throw _privateConstructorUsedError;
  String? get minimumVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppVersionModelCopyWith<AppVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionModelCopyWith<$Res> {
  factory $AppVersionModelCopyWith(
          AppVersionModel value, $Res Function(AppVersionModel) then) =
      _$AppVersionModelCopyWithImpl<$Res>;
  $Res call({String? currentVersion, String? minimumVersion});
}

/// @nodoc
class _$AppVersionModelCopyWithImpl<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  _$AppVersionModelCopyWithImpl(this._value, this._then);

  final AppVersionModel _value;
  // ignore: unused_field
  final $Res Function(AppVersionModel) _then;

  @override
  $Res call({
    Object? currentVersion = freezed,
    Object? minimumVersion = freezed,
  }) {
    return _then(_value.copyWith(
      currentVersion: currentVersion == freezed
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumVersion: minimumVersion == freezed
          ? _value.minimumVersion
          : minimumVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AppVersionModelCopyWith<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  factory _$AppVersionModelCopyWith(
          _AppVersionModel value, $Res Function(_AppVersionModel) then) =
      __$AppVersionModelCopyWithImpl<$Res>;
  @override
  $Res call({String? currentVersion, String? minimumVersion});
}

/// @nodoc
class __$AppVersionModelCopyWithImpl<$Res>
    extends _$AppVersionModelCopyWithImpl<$Res>
    implements _$AppVersionModelCopyWith<$Res> {
  __$AppVersionModelCopyWithImpl(
      _AppVersionModel _value, $Res Function(_AppVersionModel) _then)
      : super(_value, (v) => _then(v as _AppVersionModel));

  @override
  _AppVersionModel get _value => super._value as _AppVersionModel;

  @override
  $Res call({
    Object? currentVersion = freezed,
    Object? minimumVersion = freezed,
  }) {
    return _then(_AppVersionModel(
      currentVersion: currentVersion == freezed
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumVersion: minimumVersion == freezed
          ? _value.minimumVersion
          : minimumVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppVersionModel implements _AppVersionModel {
  const _$_AppVersionModel({this.currentVersion, this.minimumVersion});

  factory _$_AppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AppVersionModelFromJson(json);

  @override
  final String? currentVersion;
  @override
  final String? minimumVersion;

  @override
  String toString() {
    return 'AppVersionModel(currentVersion: $currentVersion, minimumVersion: $minimumVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppVersionModel &&
            (identical(other.currentVersion, currentVersion) ||
                const DeepCollectionEquality()
                    .equals(other.currentVersion, currentVersion)) &&
            (identical(other.minimumVersion, minimumVersion) ||
                const DeepCollectionEquality()
                    .equals(other.minimumVersion, minimumVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentVersion) ^
      const DeepCollectionEquality().hash(minimumVersion);

  @JsonKey(ignore: true)
  @override
  _$AppVersionModelCopyWith<_AppVersionModel> get copyWith =>
      __$AppVersionModelCopyWithImpl<_AppVersionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppVersionModelToJson(this);
  }
}

abstract class _AppVersionModel implements AppVersionModel {
  const factory _AppVersionModel(
      {String? currentVersion, String? minimumVersion}) = _$_AppVersionModel;

  factory _AppVersionModel.fromJson(Map<String, dynamic> json) =
      _$_AppVersionModel.fromJson;

  @override
  String? get currentVersion => throw _privateConstructorUsedError;
  @override
  String? get minimumVersion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppVersionModelCopyWith<_AppVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
