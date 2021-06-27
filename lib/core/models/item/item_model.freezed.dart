// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
class _$ItemModelTearOff {
  const _$ItemModelTearOff();

  _ItemModel call(
      {required int id,
      required String image,
      required String name,
      String? description,
      double? salePrice,
      required double mrp,
      int? maxQuantity}) {
    return _ItemModel(
      id: id,
      image: image,
      name: name,
      description: description,
      salePrice: salePrice,
      mrp: mrp,
      maxQuantity: maxQuantity,
    );
  }

  ItemModel fromJson(Map<String, Object> json) {
    return ItemModel.fromJson(json);
  }
}

/// @nodoc
const $ItemModel = _$ItemModelTearOff();

/// @nodoc
mixin _$ItemModel {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get salePrice => throw _privateConstructorUsedError;
  double get mrp => throw _privateConstructorUsedError;
  int? get maxQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String image,
      String name,
      String? description,
      double? salePrice,
      double mrp,
      int? maxQuantity});
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res> implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  final ItemModel _value;
  // ignore: unused_field
  final $Res Function(ItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? salePrice = freezed,
    Object? mrp = freezed,
    Object? maxQuantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      mrp: mrp == freezed
          ? _value.mrp
          : mrp // ignore: cast_nullable_to_non_nullable
              as double,
      maxQuantity: maxQuantity == freezed
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$ItemModelCopyWith(
          _ItemModel value, $Res Function(_ItemModel) then) =
      __$ItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String image,
      String name,
      String? description,
      double? salePrice,
      double mrp,
      int? maxQuantity});
}

/// @nodoc
class __$ItemModelCopyWithImpl<$Res> extends _$ItemModelCopyWithImpl<$Res>
    implements _$ItemModelCopyWith<$Res> {
  __$ItemModelCopyWithImpl(_ItemModel _value, $Res Function(_ItemModel) _then)
      : super(_value, (v) => _then(v as _ItemModel));

  @override
  _ItemModel get _value => super._value as _ItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? salePrice = freezed,
    Object? mrp = freezed,
    Object? maxQuantity = freezed,
  }) {
    return _then(_ItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      mrp: mrp == freezed
          ? _value.mrp
          : mrp // ignore: cast_nullable_to_non_nullable
              as double,
      maxQuantity: maxQuantity == freezed
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModel with DiagnosticableTreeMixin implements _ItemModel {
  const _$_ItemModel(
      {required this.id,
      required this.image,
      required this.name,
      this.description,
      this.salePrice,
      required this.mrp,
      this.maxQuantity});

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemModelFromJson(json);

  @override
  final int id;
  @override
  final String image;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double? salePrice;
  @override
  final double mrp;
  @override
  final int? maxQuantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemModel(id: $id, image: $image, name: $name, description: $description, salePrice: $salePrice, mrp: $mrp, maxQuantity: $maxQuantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('salePrice', salePrice))
      ..add(DiagnosticsProperty('mrp', mrp))
      ..add(DiagnosticsProperty('maxQuantity', maxQuantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.salePrice, salePrice) ||
                const DeepCollectionEquality()
                    .equals(other.salePrice, salePrice)) &&
            (identical(other.mrp, mrp) ||
                const DeepCollectionEquality().equals(other.mrp, mrp)) &&
            (identical(other.maxQuantity, maxQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.maxQuantity, maxQuantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(salePrice) ^
      const DeepCollectionEquality().hash(mrp) ^
      const DeepCollectionEquality().hash(maxQuantity);

  @JsonKey(ignore: true)
  @override
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      __$ItemModelCopyWithImpl<_ItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemModelToJson(this);
  }
}

abstract class _ItemModel implements ItemModel {
  const factory _ItemModel(
      {required int id,
      required String image,
      required String name,
      String? description,
      double? salePrice,
      required double mrp,
      int? maxQuantity}) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  double? get salePrice => throw _privateConstructorUsedError;
  @override
  double get mrp => throw _privateConstructorUsedError;
  @override
  int? get maxQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
