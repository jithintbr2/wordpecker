// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'epub_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EPubModel _$EPubModelFromJson(Map<String, dynamic> json) {
  return _EPubModel.fromJson(json);
}

/// @nodoc
class _$EPubModelTearOff {
  const _$EPubModelTearOff();

  _EPubModel call(
      {required int itemId,
      required int pubId,
      required String fileName,
      required String image,
      required String name}) {
    return _EPubModel(
      itemId: itemId,
      pubId: pubId,
      fileName: fileName,
      image: image,
      name: name,
    );
  }

  EPubModel fromJson(Map<String, Object> json) {
    return EPubModel.fromJson(json);
  }
}

/// @nodoc
const $EPubModel = _$EPubModelTearOff();

/// @nodoc
mixin _$EPubModel {
  int get itemId => throw _privateConstructorUsedError;
  int get pubId => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EPubModelCopyWith<EPubModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EPubModelCopyWith<$Res> {
  factory $EPubModelCopyWith(EPubModel value, $Res Function(EPubModel) then) =
      _$EPubModelCopyWithImpl<$Res>;
  $Res call(
      {int itemId, int pubId, String fileName, String image, String name});
}

/// @nodoc
class _$EPubModelCopyWithImpl<$Res> implements $EPubModelCopyWith<$Res> {
  _$EPubModelCopyWithImpl(this._value, this._then);

  final EPubModel _value;
  // ignore: unused_field
  final $Res Function(EPubModel) _then;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? pubId = freezed,
    Object? fileName = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      pubId: pubId == freezed
          ? _value.pubId
          : pubId // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EPubModelCopyWith<$Res> implements $EPubModelCopyWith<$Res> {
  factory _$EPubModelCopyWith(
          _EPubModel value, $Res Function(_EPubModel) then) =
      __$EPubModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int itemId, int pubId, String fileName, String image, String name});
}

/// @nodoc
class __$EPubModelCopyWithImpl<$Res> extends _$EPubModelCopyWithImpl<$Res>
    implements _$EPubModelCopyWith<$Res> {
  __$EPubModelCopyWithImpl(_EPubModel _value, $Res Function(_EPubModel) _then)
      : super(_value, (v) => _then(v as _EPubModel));

  @override
  _EPubModel get _value => super._value as _EPubModel;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? pubId = freezed,
    Object? fileName = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_EPubModel(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      pubId: pubId == freezed
          ? _value.pubId
          : pubId // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EPubModel implements _EPubModel {
  const _$_EPubModel(
      {required this.itemId,
      required this.pubId,
      required this.fileName,
      required this.image,
      required this.name});

  factory _$_EPubModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EPubModelFromJson(json);

  @override
  final int itemId;
  @override
  final int pubId;
  @override
  final String fileName;
  @override
  final String image;
  @override
  final String name;

  @override
  String toString() {
    return 'EPubModel(itemId: $itemId, pubId: $pubId, fileName: $fileName, image: $image, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EPubModel &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.pubId, pubId) ||
                const DeepCollectionEquality().equals(other.pubId, pubId)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(pubId) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$EPubModelCopyWith<_EPubModel> get copyWith =>
      __$EPubModelCopyWithImpl<_EPubModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EPubModelToJson(this);
  }
}

abstract class _EPubModel implements EPubModel {
  const factory _EPubModel(
      {required int itemId,
      required int pubId,
      required String fileName,
      required String image,
      required String name}) = _$_EPubModel;

  factory _EPubModel.fromJson(Map<String, dynamic> json) =
      _$_EPubModel.fromJson;

  @override
  int get itemId => throw _privateConstructorUsedError;
  @override
  int get pubId => throw _privateConstructorUsedError;
  @override
  String get fileName => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EPubModelCopyWith<_EPubModel> get copyWith =>
      throw _privateConstructorUsedError;
}
