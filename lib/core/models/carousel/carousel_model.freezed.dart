// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'carousel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarouselModel _$CarouselModelFromJson(Map<String, dynamic> json) {
  return _CarouselModel.fromJson(json);
}

/// @nodoc
class _$CarouselModelTearOff {
  const _$CarouselModelTearOff();

  _CarouselModel call(
      {required int id,
      required int shopId,
      required int itemId,
      String? name,
      required String imageUrl,
      required double aspectRatio,
      String? externalLink}) {
    return _CarouselModel(
      id: id,
      shopId: shopId,
      itemId: itemId,
      name: name,
      imageUrl: imageUrl,
      aspectRatio: aspectRatio,
      externalLink: externalLink,
    );
  }

  CarouselModel fromJson(Map<String, Object> json) {
    return CarouselModel.fromJson(json);
  }
}

/// @nodoc
const $CarouselModel = _$CarouselModelTearOff();

/// @nodoc
mixin _$CarouselModel {
  int get id => throw _privateConstructorUsedError;
  int get shopId => throw _privateConstructorUsedError;
  int get itemId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get aspectRatio => throw _privateConstructorUsedError;
  String? get externalLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarouselModelCopyWith<CarouselModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselModelCopyWith<$Res> {
  factory $CarouselModelCopyWith(
          CarouselModel value, $Res Function(CarouselModel) then) =
      _$CarouselModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int shopId,
      int itemId,
      String? name,
      String imageUrl,
      double aspectRatio,
      String? externalLink});
}

/// @nodoc
class _$CarouselModelCopyWithImpl<$Res>
    implements $CarouselModelCopyWith<$Res> {
  _$CarouselModelCopyWithImpl(this._value, this._then);

  final CarouselModel _value;
  // ignore: unused_field
  final $Res Function(CarouselModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? shopId = freezed,
    Object? itemId = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? aspectRatio = freezed,
    Object? externalLink = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      aspectRatio: aspectRatio == freezed
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      externalLink: externalLink == freezed
          ? _value.externalLink
          : externalLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CarouselModelCopyWith<$Res>
    implements $CarouselModelCopyWith<$Res> {
  factory _$CarouselModelCopyWith(
          _CarouselModel value, $Res Function(_CarouselModel) then) =
      __$CarouselModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int shopId,
      int itemId,
      String? name,
      String imageUrl,
      double aspectRatio,
      String? externalLink});
}

/// @nodoc
class __$CarouselModelCopyWithImpl<$Res>
    extends _$CarouselModelCopyWithImpl<$Res>
    implements _$CarouselModelCopyWith<$Res> {
  __$CarouselModelCopyWithImpl(
      _CarouselModel _value, $Res Function(_CarouselModel) _then)
      : super(_value, (v) => _then(v as _CarouselModel));

  @override
  _CarouselModel get _value => super._value as _CarouselModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? shopId = freezed,
    Object? itemId = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? aspectRatio = freezed,
    Object? externalLink = freezed,
  }) {
    return _then(_CarouselModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      aspectRatio: aspectRatio == freezed
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      externalLink: externalLink == freezed
          ? _value.externalLink
          : externalLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarouselModel with DiagnosticableTreeMixin implements _CarouselModel {
  const _$_CarouselModel(
      {required this.id,
      required this.shopId,
      required this.itemId,
      this.name,
      required this.imageUrl,
      required this.aspectRatio,
      this.externalLink});

  factory _$_CarouselModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CarouselModelFromJson(json);

  @override
  final int id;
  @override
  final int shopId;
  @override
  final int itemId;
  @override
  final String? name;
  @override
  final String imageUrl;
  @override
  final double aspectRatio;
  @override
  final String? externalLink;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CarouselModel(id: $id, shopId: $shopId, itemId: $itemId, name: $name, imageUrl: $imageUrl, aspectRatio: $aspectRatio, externalLink: $externalLink)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CarouselModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('shopId', shopId))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('aspectRatio', aspectRatio))
      ..add(DiagnosticsProperty('externalLink', externalLink));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CarouselModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.shopId, shopId) ||
                const DeepCollectionEquality().equals(other.shopId, shopId)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.aspectRatio, aspectRatio) ||
                const DeepCollectionEquality()
                    .equals(other.aspectRatio, aspectRatio)) &&
            (identical(other.externalLink, externalLink) ||
                const DeepCollectionEquality()
                    .equals(other.externalLink, externalLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(shopId) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(aspectRatio) ^
      const DeepCollectionEquality().hash(externalLink);

  @JsonKey(ignore: true)
  @override
  _$CarouselModelCopyWith<_CarouselModel> get copyWith =>
      __$CarouselModelCopyWithImpl<_CarouselModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CarouselModelToJson(this);
  }
}

abstract class _CarouselModel implements CarouselModel {
  const factory _CarouselModel(
      {required int id,
      required int shopId,
      required int itemId,
      String? name,
      required String imageUrl,
      required double aspectRatio,
      String? externalLink}) = _$_CarouselModel;

  factory _CarouselModel.fromJson(Map<String, dynamic> json) =
      _$_CarouselModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get shopId => throw _privateConstructorUsedError;
  @override
  int get itemId => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  double get aspectRatio => throw _privateConstructorUsedError;
  @override
  String? get externalLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CarouselModelCopyWith<_CarouselModel> get copyWith =>
      throw _privateConstructorUsedError;
}
