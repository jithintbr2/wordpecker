// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopModel _$ShopModelFromJson(Map<String, dynamic> json) {
  return _ShopModel.fromJson(json);
}

/// @nodoc
class _$ShopModelTearOff {
  const _$ShopModelTearOff();

  _ShopModel call(
      {required int id,
      required String name,
      String? image,
      @JsonKey(defaultValue: false) bool? serviceAvailable,
      List<String>? services,
      @JsonKey(defaultValue: 0) int? ratingCount,
      @JsonKey(defaultValue: 0) double? rating,
      MenuModel? menu}) {
    return _ShopModel(
      id: id,
      name: name,
      image: image,
      serviceAvailable: serviceAvailable,
      services: services,
      ratingCount: ratingCount,
      rating: rating,
      menu: menu,
    );
  }

  ShopModel fromJson(Map<String, Object> json) {
    return ShopModel.fromJson(json);
  }
}

/// @nodoc
const $ShopModel = _$ShopModelTearOff();

/// @nodoc
mixin _$ShopModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool? get serviceAvailable => throw _privateConstructorUsedError;
  List<String>? get services => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int? get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  double? get rating => throw _privateConstructorUsedError;
  MenuModel? get menu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopModelCopyWith<ShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopModelCopyWith<$Res> {
  factory $ShopModelCopyWith(ShopModel value, $Res Function(ShopModel) then) =
      _$ShopModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String? image,
      @JsonKey(defaultValue: false) bool? serviceAvailable,
      List<String>? services,
      @JsonKey(defaultValue: 0) int? ratingCount,
      @JsonKey(defaultValue: 0) double? rating,
      MenuModel? menu});

  $MenuModelCopyWith<$Res>? get menu;
}

/// @nodoc
class _$ShopModelCopyWithImpl<$Res> implements $ShopModelCopyWith<$Res> {
  _$ShopModelCopyWithImpl(this._value, this._then);

  final ShopModel _value;
  // ignore: unused_field
  final $Res Function(ShopModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? serviceAvailable = freezed,
    Object? services = freezed,
    Object? ratingCount = freezed,
    Object? rating = freezed,
    Object? menu = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceAvailable: serviceAvailable == freezed
          ? _value.serviceAvailable
          : serviceAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as MenuModel?,
    ));
  }

  @override
  $MenuModelCopyWith<$Res>? get menu {
    if (_value.menu == null) {
      return null;
    }

    return $MenuModelCopyWith<$Res>(_value.menu!, (value) {
      return _then(_value.copyWith(menu: value));
    });
  }
}

/// @nodoc
abstract class _$ShopModelCopyWith<$Res> implements $ShopModelCopyWith<$Res> {
  factory _$ShopModelCopyWith(
          _ShopModel value, $Res Function(_ShopModel) then) =
      __$ShopModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String? image,
      @JsonKey(defaultValue: false) bool? serviceAvailable,
      List<String>? services,
      @JsonKey(defaultValue: 0) int? ratingCount,
      @JsonKey(defaultValue: 0) double? rating,
      MenuModel? menu});

  @override
  $MenuModelCopyWith<$Res>? get menu;
}

/// @nodoc
class __$ShopModelCopyWithImpl<$Res> extends _$ShopModelCopyWithImpl<$Res>
    implements _$ShopModelCopyWith<$Res> {
  __$ShopModelCopyWithImpl(_ShopModel _value, $Res Function(_ShopModel) _then)
      : super(_value, (v) => _then(v as _ShopModel));

  @override
  _ShopModel get _value => super._value as _ShopModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? serviceAvailable = freezed,
    Object? services = freezed,
    Object? ratingCount = freezed,
    Object? rating = freezed,
    Object? menu = freezed,
  }) {
    return _then(_ShopModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceAvailable: serviceAvailable == freezed
          ? _value.serviceAvailable
          : serviceAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as MenuModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopModel implements _ShopModel {
  const _$_ShopModel(
      {required this.id,
      required this.name,
      this.image,
      @JsonKey(defaultValue: false) this.serviceAvailable,
      this.services,
      @JsonKey(defaultValue: 0) this.ratingCount,
      @JsonKey(defaultValue: 0) this.rating,
      this.menu});

  factory _$_ShopModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ShopModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;
  @override
  @JsonKey(defaultValue: false)
  final bool? serviceAvailable;
  @override
  final List<String>? services;
  @override
  @JsonKey(defaultValue: 0)
  final int? ratingCount;
  @override
  @JsonKey(defaultValue: 0)
  final double? rating;
  @override
  final MenuModel? menu;

  @override
  String toString() {
    return 'ShopModel(id: $id, name: $name, image: $image, serviceAvailable: $serviceAvailable, services: $services, ratingCount: $ratingCount, rating: $rating, menu: $menu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.serviceAvailable, serviceAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.serviceAvailable, serviceAvailable)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)) &&
            (identical(other.ratingCount, ratingCount) ||
                const DeepCollectionEquality()
                    .equals(other.ratingCount, ratingCount)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.menu, menu) ||
                const DeepCollectionEquality().equals(other.menu, menu)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(serviceAvailable) ^
      const DeepCollectionEquality().hash(services) ^
      const DeepCollectionEquality().hash(ratingCount) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(menu);

  @JsonKey(ignore: true)
  @override
  _$ShopModelCopyWith<_ShopModel> get copyWith =>
      __$ShopModelCopyWithImpl<_ShopModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShopModelToJson(this);
  }
}

abstract class _ShopModel implements ShopModel {
  const factory _ShopModel(
      {required int id,
      required String name,
      String? image,
      @JsonKey(defaultValue: false) bool? serviceAvailable,
      List<String>? services,
      @JsonKey(defaultValue: 0) int? ratingCount,
      @JsonKey(defaultValue: 0) double? rating,
      MenuModel? menu}) = _$_ShopModel;

  factory _ShopModel.fromJson(Map<String, dynamic> json) =
      _$_ShopModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: false)
  bool? get serviceAvailable => throw _privateConstructorUsedError;
  @override
  List<String>? get services => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: 0)
  int? get ratingCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: 0)
  double? get rating => throw _privateConstructorUsedError;
  @override
  MenuModel? get menu => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopModelCopyWith<_ShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}
