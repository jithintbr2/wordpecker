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
      {@JsonKey(name: 'id') required int shopId,
      required String shopName,
      @JsonKey(name: 'imgUrl') required String imageUrl,
      @JsonKey(defaultValue: false) bool? servicesNow,
      List<String>? services,
      @JsonKey(defaultValue: 0) int? ratingCount,
      @JsonKey(defaultValue: 0) double? rating,
      List<MenuModel>? category,
      List<String>? slider,
      @JsonKey(name: 'scrollingMessage') String? message,
      String? openingTime}) {
    return _ShopModel(
      shopId: shopId,
      shopName: shopName,
      imageUrl: imageUrl,
      servicesNow: servicesNow,
      services: services,
      ratingCount: ratingCount,
      rating: rating,
      category: category,
      slider: slider,
      message: message,
      openingTime: openingTime,
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
  @JsonKey(name: 'id')
  int get shopId => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  @JsonKey(name: 'imgUrl')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool? get servicesNow => throw _privateConstructorUsedError;
  List<String>? get services => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int? get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  double? get rating => throw _privateConstructorUsedError;
  List<MenuModel>? get category => throw _privateConstructorUsedError;
  List<String>? get slider => throw _privateConstructorUsedError;
  @JsonKey(name: 'scrollingMessage')
  String? get message => throw _privateConstructorUsedError;
  String? get openingTime => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') int shopId,
      String shopName,
      @JsonKey(name: 'imgUrl') String imageUrl,
      @JsonKey(defaultValue: false) bool? servicesNow,
      List<String>? services,
      @JsonKey(defaultValue: 0) int? ratingCount,
      @JsonKey(defaultValue: 0) double? rating,
      List<MenuModel>? category,
      List<String>? slider,
      @JsonKey(name: 'scrollingMessage') String? message,
      String? openingTime});
}

/// @nodoc
class _$ShopModelCopyWithImpl<$Res> implements $ShopModelCopyWith<$Res> {
  _$ShopModelCopyWithImpl(this._value, this._then);

  final ShopModel _value;
  // ignore: unused_field
  final $Res Function(ShopModel) _then;

  @override
  $Res call({
    Object? shopId = freezed,
    Object? shopName = freezed,
    Object? imageUrl = freezed,
    Object? servicesNow = freezed,
    Object? services = freezed,
    Object? ratingCount = freezed,
    Object? rating = freezed,
    Object? category = freezed,
    Object? slider = freezed,
    Object? message = freezed,
    Object? openingTime = freezed,
  }) {
    return _then(_value.copyWith(
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      servicesNow: servicesNow == freezed
          ? _value.servicesNow
          : servicesNow // ignore: cast_nullable_to_non_nullable
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
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>?,
      slider: slider == freezed
          ? _value.slider
          : slider // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      openingTime: openingTime == freezed
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShopModelCopyWith<$Res> implements $ShopModelCopyWith<$Res> {
  factory _$ShopModelCopyWith(
          _ShopModel value, $Res Function(_ShopModel) then) =
      __$ShopModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int shopId,
      String shopName,
      @JsonKey(name: 'imgUrl') String imageUrl,
      @JsonKey(defaultValue: false) bool? servicesNow,
      List<String>? services,
      @JsonKey(defaultValue: 0) int? ratingCount,
      @JsonKey(defaultValue: 0) double? rating,
      List<MenuModel>? category,
      List<String>? slider,
      @JsonKey(name: 'scrollingMessage') String? message,
      String? openingTime});
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
    Object? shopId = freezed,
    Object? shopName = freezed,
    Object? imageUrl = freezed,
    Object? servicesNow = freezed,
    Object? services = freezed,
    Object? ratingCount = freezed,
    Object? rating = freezed,
    Object? category = freezed,
    Object? slider = freezed,
    Object? message = freezed,
    Object? openingTime = freezed,
  }) {
    return _then(_ShopModel(
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      servicesNow: servicesNow == freezed
          ? _value.servicesNow
          : servicesNow // ignore: cast_nullable_to_non_nullable
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
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>?,
      slider: slider == freezed
          ? _value.slider
          : slider // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      openingTime: openingTime == freezed
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopModel implements _ShopModel {
  const _$_ShopModel(
      {@JsonKey(name: 'id') required this.shopId,
      required this.shopName,
      @JsonKey(name: 'imgUrl') required this.imageUrl,
      @JsonKey(defaultValue: false) this.servicesNow,
      this.services,
      @JsonKey(defaultValue: 0) this.ratingCount,
      @JsonKey(defaultValue: 0) this.rating,
      this.category,
      this.slider,
      @JsonKey(name: 'scrollingMessage') this.message,
      this.openingTime});

  factory _$_ShopModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ShopModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int shopId;
  @override
  final String shopName;
  @override
  @JsonKey(name: 'imgUrl')
  final String imageUrl;
  @override
  @JsonKey(defaultValue: false)
  final bool? servicesNow;
  @override
  final List<String>? services;
  @override
  @JsonKey(defaultValue: 0)
  final int? ratingCount;
  @override
  @JsonKey(defaultValue: 0)
  final double? rating;
  @override
  final List<MenuModel>? category;
  @override
  final List<String>? slider;
  @override
  @JsonKey(name: 'scrollingMessage')
  final String? message;
  @override
  final String? openingTime;

  @override
  String toString() {
    return 'ShopModel(shopId: $shopId, shopName: $shopName, imageUrl: $imageUrl, servicesNow: $servicesNow, services: $services, ratingCount: $ratingCount, rating: $rating, category: $category, slider: $slider, message: $message, openingTime: $openingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopModel &&
            (identical(other.shopId, shopId) ||
                const DeepCollectionEquality().equals(other.shopId, shopId)) &&
            (identical(other.shopName, shopName) ||
                const DeepCollectionEquality()
                    .equals(other.shopName, shopName)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.servicesNow, servicesNow) ||
                const DeepCollectionEquality()
                    .equals(other.servicesNow, servicesNow)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)) &&
            (identical(other.ratingCount, ratingCount) ||
                const DeepCollectionEquality()
                    .equals(other.ratingCount, ratingCount)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.slider, slider) ||
                const DeepCollectionEquality().equals(other.slider, slider)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.openingTime, openingTime) ||
                const DeepCollectionEquality()
                    .equals(other.openingTime, openingTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shopId) ^
      const DeepCollectionEquality().hash(shopName) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(servicesNow) ^
      const DeepCollectionEquality().hash(services) ^
      const DeepCollectionEquality().hash(ratingCount) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(slider) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(openingTime);

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
      {@JsonKey(name: 'id') required int shopId,
      required String shopName,
      @JsonKey(name: 'imgUrl') required String imageUrl,
      @JsonKey(defaultValue: false) bool? servicesNow,
      List<String>? services,
      @JsonKey(defaultValue: 0) int? ratingCount,
      @JsonKey(defaultValue: 0) double? rating,
      List<MenuModel>? category,
      List<String>? slider,
      @JsonKey(name: 'scrollingMessage') String? message,
      String? openingTime}) = _$_ShopModel;

  factory _ShopModel.fromJson(Map<String, dynamic> json) =
      _$_ShopModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get shopId => throw _privateConstructorUsedError;
  @override
  String get shopName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'imgUrl')
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: false)
  bool? get servicesNow => throw _privateConstructorUsedError;
  @override
  List<String>? get services => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: 0)
  int? get ratingCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: 0)
  double? get rating => throw _privateConstructorUsedError;
  @override
  List<MenuModel>? get category => throw _privateConstructorUsedError;
  @override
  List<String>? get slider => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'scrollingMessage')
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get openingTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopModelCopyWith<_ShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}
