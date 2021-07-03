// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_varient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemVarientModel _$ItemVarientModelFromJson(Map<String, dynamic> json) {
  return _ItemVarientModel.fromJson(json);
}

/// @nodoc
class _$ItemVarientModelTearOff {
  const _$ItemVarientModelTearOff();

  _ItemVarientModel call(
      {required int varientId,
      required String varientType,
      required String varientName,
      required String itemName,
      @JsonKey(name: "imgUrl") required String image,
      String? description,
      @JsonKey(name: "itemCost") double? salePrice,
      required double mrp,
      int? maxQuantity}) {
    return _ItemVarientModel(
      varientId: varientId,
      varientType: varientType,
      varientName: varientName,
      itemName: itemName,
      image: image,
      description: description,
      salePrice: salePrice,
      mrp: mrp,
      maxQuantity: maxQuantity,
    );
  }

  ItemVarientModel fromJson(Map<String, Object> json) {
    return ItemVarientModel.fromJson(json);
  }
}

/// @nodoc
const $ItemVarientModel = _$ItemVarientModelTearOff();

/// @nodoc
mixin _$ItemVarientModel {
  int get varientId => throw _privateConstructorUsedError;
  String get varientType => throw _privateConstructorUsedError;
  String get varientName => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  @JsonKey(name: "imgUrl")
  String get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "itemCost")
  double? get salePrice => throw _privateConstructorUsedError;
  double get mrp => throw _privateConstructorUsedError;
  int? get maxQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemVarientModelCopyWith<ItemVarientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemVarientModelCopyWith<$Res> {
  factory $ItemVarientModelCopyWith(
          ItemVarientModel value, $Res Function(ItemVarientModel) then) =
      _$ItemVarientModelCopyWithImpl<$Res>;
  $Res call(
      {int varientId,
      String varientType,
      String varientName,
      String itemName,
      @JsonKey(name: "imgUrl") String image,
      String? description,
      @JsonKey(name: "itemCost") double? salePrice,
      double mrp,
      int? maxQuantity});
}

/// @nodoc
class _$ItemVarientModelCopyWithImpl<$Res>
    implements $ItemVarientModelCopyWith<$Res> {
  _$ItemVarientModelCopyWithImpl(this._value, this._then);

  final ItemVarientModel _value;
  // ignore: unused_field
  final $Res Function(ItemVarientModel) _then;

  @override
  $Res call({
    Object? varientId = freezed,
    Object? varientType = freezed,
    Object? varientName = freezed,
    Object? itemName = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? salePrice = freezed,
    Object? mrp = freezed,
    Object? maxQuantity = freezed,
  }) {
    return _then(_value.copyWith(
      varientId: varientId == freezed
          ? _value.varientId
          : varientId // ignore: cast_nullable_to_non_nullable
              as int,
      varientType: varientType == freezed
          ? _value.varientType
          : varientType // ignore: cast_nullable_to_non_nullable
              as String,
      varientName: varientName == freezed
          ? _value.varientName
          : varientName // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
abstract class _$ItemVarientModelCopyWith<$Res>
    implements $ItemVarientModelCopyWith<$Res> {
  factory _$ItemVarientModelCopyWith(
          _ItemVarientModel value, $Res Function(_ItemVarientModel) then) =
      __$ItemVarientModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int varientId,
      String varientType,
      String varientName,
      String itemName,
      @JsonKey(name: "imgUrl") String image,
      String? description,
      @JsonKey(name: "itemCost") double? salePrice,
      double mrp,
      int? maxQuantity});
}

/// @nodoc
class __$ItemVarientModelCopyWithImpl<$Res>
    extends _$ItemVarientModelCopyWithImpl<$Res>
    implements _$ItemVarientModelCopyWith<$Res> {
  __$ItemVarientModelCopyWithImpl(
      _ItemVarientModel _value, $Res Function(_ItemVarientModel) _then)
      : super(_value, (v) => _then(v as _ItemVarientModel));

  @override
  _ItemVarientModel get _value => super._value as _ItemVarientModel;

  @override
  $Res call({
    Object? varientId = freezed,
    Object? varientType = freezed,
    Object? varientName = freezed,
    Object? itemName = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? salePrice = freezed,
    Object? mrp = freezed,
    Object? maxQuantity = freezed,
  }) {
    return _then(_ItemVarientModel(
      varientId: varientId == freezed
          ? _value.varientId
          : varientId // ignore: cast_nullable_to_non_nullable
              as int,
      varientType: varientType == freezed
          ? _value.varientType
          : varientType // ignore: cast_nullable_to_non_nullable
              as String,
      varientName: varientName == freezed
          ? _value.varientName
          : varientName // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$_ItemVarientModel
    with DiagnosticableTreeMixin
    implements _ItemVarientModel {
  const _$_ItemVarientModel(
      {required this.varientId,
      required this.varientType,
      required this.varientName,
      required this.itemName,
      @JsonKey(name: "imgUrl") required this.image,
      this.description,
      @JsonKey(name: "itemCost") this.salePrice,
      required this.mrp,
      this.maxQuantity});

  factory _$_ItemVarientModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemVarientModelFromJson(json);

  @override
  final int varientId;
  @override
  final String varientType;
  @override
  final String varientName;
  @override
  final String itemName;
  @override
  @JsonKey(name: "imgUrl")
  final String image;
  @override
  final String? description;
  @override
  @JsonKey(name: "itemCost")
  final double? salePrice;
  @override
  final double mrp;
  @override
  final int? maxQuantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemVarientModel(varientId: $varientId, varientType: $varientType, varientName: $varientName, itemName: $itemName, image: $image, description: $description, salePrice: $salePrice, mrp: $mrp, maxQuantity: $maxQuantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemVarientModel'))
      ..add(DiagnosticsProperty('varientId', varientId))
      ..add(DiagnosticsProperty('varientType', varientType))
      ..add(DiagnosticsProperty('varientName', varientName))
      ..add(DiagnosticsProperty('itemName', itemName))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('salePrice', salePrice))
      ..add(DiagnosticsProperty('mrp', mrp))
      ..add(DiagnosticsProperty('maxQuantity', maxQuantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemVarientModel &&
            (identical(other.varientId, varientId) ||
                const DeepCollectionEquality()
                    .equals(other.varientId, varientId)) &&
            (identical(other.varientType, varientType) ||
                const DeepCollectionEquality()
                    .equals(other.varientType, varientType)) &&
            (identical(other.varientName, varientName) ||
                const DeepCollectionEquality()
                    .equals(other.varientName, varientName)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
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
      const DeepCollectionEquality().hash(varientId) ^
      const DeepCollectionEquality().hash(varientType) ^
      const DeepCollectionEquality().hash(varientName) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(salePrice) ^
      const DeepCollectionEquality().hash(mrp) ^
      const DeepCollectionEquality().hash(maxQuantity);

  @JsonKey(ignore: true)
  @override
  _$ItemVarientModelCopyWith<_ItemVarientModel> get copyWith =>
      __$ItemVarientModelCopyWithImpl<_ItemVarientModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemVarientModelToJson(this);
  }
}

abstract class _ItemVarientModel implements ItemVarientModel {
  const factory _ItemVarientModel(
      {required int varientId,
      required String varientType,
      required String varientName,
      required String itemName,
      @JsonKey(name: "imgUrl") required String image,
      String? description,
      @JsonKey(name: "itemCost") double? salePrice,
      required double mrp,
      int? maxQuantity}) = _$_ItemVarientModel;

  factory _ItemVarientModel.fromJson(Map<String, dynamic> json) =
      _$_ItemVarientModel.fromJson;

  @override
  int get varientId => throw _privateConstructorUsedError;
  @override
  String get varientType => throw _privateConstructorUsedError;
  @override
  String get varientName => throw _privateConstructorUsedError;
  @override
  String get itemName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "imgUrl")
  String get image => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "itemCost")
  double? get salePrice => throw _privateConstructorUsedError;
  @override
  double get mrp => throw _privateConstructorUsedError;
  @override
  int? get maxQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemVarientModelCopyWith<_ItemVarientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
