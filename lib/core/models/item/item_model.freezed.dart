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
      {@JsonKey(name: "itemId")
          required int id,
      @JsonKey(name: "itemImage")
          required String image,
      @JsonKey(name: "itemName")
          required String name,
      @JsonKey(name: "itemVarients")
          required List<ItemVarientModel> varients}) {
    return _ItemModel(
      id: id,
      image: image,
      name: name,
      varients: varients,
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
  @JsonKey(name: "itemId")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "itemImage")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "itemName")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "itemVarients")
  List<ItemVarientModel> get varients => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "itemId") int id,
      @JsonKey(name: "itemImage") String image,
      @JsonKey(name: "itemName") String name,
      @JsonKey(name: "itemVarients") List<ItemVarientModel> varients});
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
    Object? varients = freezed,
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
      varients: varients == freezed
          ? _value.varients
          : varients // ignore: cast_nullable_to_non_nullable
              as List<ItemVarientModel>,
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
      {@JsonKey(name: "itemId") int id,
      @JsonKey(name: "itemImage") String image,
      @JsonKey(name: "itemName") String name,
      @JsonKey(name: "itemVarients") List<ItemVarientModel> varients});
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
    Object? varients = freezed,
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
      varients: varients == freezed
          ? _value.varients
          : varients // ignore: cast_nullable_to_non_nullable
              as List<ItemVarientModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModel with DiagnosticableTreeMixin implements _ItemModel {
  const _$_ItemModel(
      {@JsonKey(name: "itemId") required this.id,
      @JsonKey(name: "itemImage") required this.image,
      @JsonKey(name: "itemName") required this.name,
      @JsonKey(name: "itemVarients") required this.varients});

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemModelFromJson(json);

  @override
  @JsonKey(name: "itemId")
  final int id;
  @override
  @JsonKey(name: "itemImage")
  final String image;
  @override
  @JsonKey(name: "itemName")
  final String name;
  @override
  @JsonKey(name: "itemVarients")
  final List<ItemVarientModel> varients;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemModel(id: $id, image: $image, name: $name, varients: $varients)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('varients', varients));
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
            (identical(other.varients, varients) ||
                const DeepCollectionEquality()
                    .equals(other.varients, varients)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(varients);

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
      {@JsonKey(name: "itemId")
          required int id,
      @JsonKey(name: "itemImage")
          required String image,
      @JsonKey(name: "itemName")
          required String name,
      @JsonKey(name: "itemVarients")
          required List<ItemVarientModel> varients}) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  @JsonKey(name: "itemId")
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "itemImage")
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "itemName")
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "itemVarients")
  List<ItemVarientModel> get varients => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
