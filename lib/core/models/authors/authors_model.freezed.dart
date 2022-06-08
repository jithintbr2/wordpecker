// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authors_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorsModel _$AuthorsModelFromJson(Map<String, dynamic> json) {
  return _AuthorsModel.fromJson(json);
}

/// @nodoc
class _$AuthorsModelTearOff {
  const _$AuthorsModelTearOff();

  _AuthorsModel call(
      {required int authorId,
      required String authorName,
      required String imageUrl}) {
    return _AuthorsModel(
      authorId: authorId,
      authorName: authorName,
      imageUrl: imageUrl,
    );
  }

  AuthorsModel fromJson(Map<String, Object> json) {
    return AuthorsModel.fromJson(json);
  }
}

/// @nodoc
const $AuthorsModel = _$AuthorsModelTearOff();

/// @nodoc
mixin _$AuthorsModel {
  int get authorId => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorsModelCopyWith<AuthorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorsModelCopyWith<$Res> {
  factory $AuthorsModelCopyWith(
          AuthorsModel value, $Res Function(AuthorsModel) then) =
      _$AuthorsModelCopyWithImpl<$Res>;
  $Res call({int authorId, String authorName, String imageUrl});
}

/// @nodoc
class _$AuthorsModelCopyWithImpl<$Res> implements $AuthorsModelCopyWith<$Res> {
  _$AuthorsModelCopyWithImpl(this._value, this._then);

  final AuthorsModel _value;
  // ignore: unused_field
  final $Res Function(AuthorsModel) _then;

  @override
  $Res call({
    Object? authorId = freezed,
    Object? authorName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthorsModelCopyWith<$Res>
    implements $AuthorsModelCopyWith<$Res> {
  factory _$AuthorsModelCopyWith(
          _AuthorsModel value, $Res Function(_AuthorsModel) then) =
      __$AuthorsModelCopyWithImpl<$Res>;
  @override
  $Res call({int authorId, String authorName, String imageUrl});
}

/// @nodoc
class __$AuthorsModelCopyWithImpl<$Res> extends _$AuthorsModelCopyWithImpl<$Res>
    implements _$AuthorsModelCopyWith<$Res> {
  __$AuthorsModelCopyWithImpl(
      _AuthorsModel _value, $Res Function(_AuthorsModel) _then)
      : super(_value, (v) => _then(v as _AuthorsModel));

  @override
  _AuthorsModel get _value => super._value as _AuthorsModel;

  @override
  $Res call({
    Object? authorId = freezed,
    Object? authorName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_AuthorsModel(
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorsModel implements _AuthorsModel {
  const _$_AuthorsModel(
      {required this.authorId,
      required this.authorName,
      required this.imageUrl});

  factory _$_AuthorsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthorsModelFromJson(json);

  @override
  final int authorId;
  @override
  final String authorName;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'AuthorsModel(authorId: $authorId, authorName: $authorName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthorsModel &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality()
                    .equals(other.authorId, authorId)) &&
            (identical(other.authorName, authorName) ||
                const DeepCollectionEquality()
                    .equals(other.authorName, authorName)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(authorName) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$AuthorsModelCopyWith<_AuthorsModel> get copyWith =>
      __$AuthorsModelCopyWithImpl<_AuthorsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthorsModelToJson(this);
  }
}

abstract class _AuthorsModel implements AuthorsModel {
  const factory _AuthorsModel(
      {required int authorId,
      required String authorName,
      required String imageUrl}) = _$_AuthorsModel;

  factory _AuthorsModel.fromJson(Map<String, dynamic> json) =
      _$_AuthorsModel.fromJson;

  @override
  int get authorId => throw _privateConstructorUsedError;
  @override
  String get authorName => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthorsModelCopyWith<_AuthorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
