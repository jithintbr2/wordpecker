// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeSearchModel _$HomeSearchModelFromJson(Map<String, dynamic> json) {
  return _HomeSearchModel.fromJson(json);
}

/// @nodoc
class _$HomeSearchModelTearOff {
  const _$HomeSearchModelTearOff();

  _HomeSearchModel call(
      {required List<ItemModel> items, required List<ShopModel> shops}) {
    return _HomeSearchModel(
      items: items,
      shops: shops,
    );
  }

  HomeSearchModel fromJson(Map<String, Object> json) {
    return HomeSearchModel.fromJson(json);
  }
}

/// @nodoc
const $HomeSearchModel = _$HomeSearchModelTearOff();

/// @nodoc
mixin _$HomeSearchModel {
  List<ItemModel> get items => throw _privateConstructorUsedError;
  List<ShopModel> get shops => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeSearchModelCopyWith<HomeSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSearchModelCopyWith<$Res> {
  factory $HomeSearchModelCopyWith(
          HomeSearchModel value, $Res Function(HomeSearchModel) then) =
      _$HomeSearchModelCopyWithImpl<$Res>;
  $Res call({List<ItemModel> items, List<ShopModel> shops});
}

/// @nodoc
class _$HomeSearchModelCopyWithImpl<$Res>
    implements $HomeSearchModelCopyWith<$Res> {
  _$HomeSearchModelCopyWithImpl(this._value, this._then);

  final HomeSearchModel _value;
  // ignore: unused_field
  final $Res Function(HomeSearchModel) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? shops = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      shops: shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
    ));
  }
}

/// @nodoc
abstract class _$HomeSearchModelCopyWith<$Res>
    implements $HomeSearchModelCopyWith<$Res> {
  factory _$HomeSearchModelCopyWith(
          _HomeSearchModel value, $Res Function(_HomeSearchModel) then) =
      __$HomeSearchModelCopyWithImpl<$Res>;
  @override
  $Res call({List<ItemModel> items, List<ShopModel> shops});
}

/// @nodoc
class __$HomeSearchModelCopyWithImpl<$Res>
    extends _$HomeSearchModelCopyWithImpl<$Res>
    implements _$HomeSearchModelCopyWith<$Res> {
  __$HomeSearchModelCopyWithImpl(
      _HomeSearchModel _value, $Res Function(_HomeSearchModel) _then)
      : super(_value, (v) => _then(v as _HomeSearchModel));

  @override
  _HomeSearchModel get _value => super._value as _HomeSearchModel;

  @override
  $Res call({
    Object? items = freezed,
    Object? shops = freezed,
  }) {
    return _then(_HomeSearchModel(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      shops: shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeSearchModel
    with DiagnosticableTreeMixin
    implements _HomeSearchModel {
  const _$_HomeSearchModel({required this.items, required this.shops});

  factory _$_HomeSearchModel.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeSearchModelFromJson(json);

  @override
  final List<ItemModel> items;
  @override
  final List<ShopModel> shops;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeSearchModel(items: $items, shops: $shops)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeSearchModel'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('shops', shops));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeSearchModel &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(shops);

  @JsonKey(ignore: true)
  @override
  _$HomeSearchModelCopyWith<_HomeSearchModel> get copyWith =>
      __$HomeSearchModelCopyWithImpl<_HomeSearchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeSearchModelToJson(this);
  }
}

abstract class _HomeSearchModel implements HomeSearchModel {
  const factory _HomeSearchModel(
      {required List<ItemModel> items,
      required List<ShopModel> shops}) = _$_HomeSearchModel;

  factory _HomeSearchModel.fromJson(Map<String, dynamic> json) =
      _$_HomeSearchModel.fromJson;

  @override
  List<ItemModel> get items => throw _privateConstructorUsedError;
  @override
  List<ShopModel> get shops => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeSearchModelCopyWith<_HomeSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
