// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sub_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubCategoryModel _$SubCategoryModelFromJson(Map<String, dynamic> json) {
  return _SubCategoryModel.fromJson(json);
}

/// @nodoc
class _$SubCategoryModelTearOff {
  const _$SubCategoryModelTearOff();

  _SubCategoryModel call(
      {@JsonKey(name: "sub_cat_id") required int id,
      @JsonKey(name: "sub_cat_name") required String name,
      required String? imageUrl,
      required List<ItemModel> items}) {
    return _SubCategoryModel(
      id: id,
      name: name,
      imageUrl: imageUrl,
      items: items,
    );
  }

  SubCategoryModel fromJson(Map<String, Object> json) {
    return SubCategoryModel.fromJson(json);
  }
}

/// @nodoc
const $SubCategoryModel = _$SubCategoryModelTearOff();

/// @nodoc
mixin _$SubCategoryModel {
  @JsonKey(name: "sub_cat_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_cat_name")
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<ItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryModelCopyWith<SubCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryModelCopyWith<$Res> {
  factory $SubCategoryModelCopyWith(
          SubCategoryModel value, $Res Function(SubCategoryModel) then) =
      _$SubCategoryModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "sub_cat_id") int id,
      @JsonKey(name: "sub_cat_name") String name,
      String? imageUrl,
      List<ItemModel> items});
}

/// @nodoc
class _$SubCategoryModelCopyWithImpl<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  _$SubCategoryModelCopyWithImpl(this._value, this._then);

  final SubCategoryModel _value;
  // ignore: unused_field
  final $Res Function(SubCategoryModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? items = freezed,
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
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$SubCategoryModelCopyWith<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  factory _$SubCategoryModelCopyWith(
          _SubCategoryModel value, $Res Function(_SubCategoryModel) then) =
      __$SubCategoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "sub_cat_id") int id,
      @JsonKey(name: "sub_cat_name") String name,
      String? imageUrl,
      List<ItemModel> items});
}

/// @nodoc
class __$SubCategoryModelCopyWithImpl<$Res>
    extends _$SubCategoryModelCopyWithImpl<$Res>
    implements _$SubCategoryModelCopyWith<$Res> {
  __$SubCategoryModelCopyWithImpl(
      _SubCategoryModel _value, $Res Function(_SubCategoryModel) _then)
      : super(_value, (v) => _then(v as _SubCategoryModel));

  @override
  _SubCategoryModel get _value => super._value as _SubCategoryModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? items = freezed,
  }) {
    return _then(_SubCategoryModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubCategoryModel
    with DiagnosticableTreeMixin
    implements _SubCategoryModel {
  const _$_SubCategoryModel(
      {@JsonKey(name: "sub_cat_id") required this.id,
      @JsonKey(name: "sub_cat_name") required this.name,
      required this.imageUrl,
      required this.items});

  factory _$_SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SubCategoryModelFromJson(json);

  @override
  @JsonKey(name: "sub_cat_id")
  final int id;
  @override
  @JsonKey(name: "sub_cat_name")
  final String name;
  @override
  final String? imageUrl;
  @override
  final List<ItemModel> items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubCategoryModel(id: $id, name: $name, imageUrl: $imageUrl, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubCategoryModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubCategoryModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$SubCategoryModelCopyWith<_SubCategoryModel> get copyWith =>
      __$SubCategoryModelCopyWithImpl<_SubCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubCategoryModelToJson(this);
  }
}

abstract class _SubCategoryModel implements SubCategoryModel {
  const factory _SubCategoryModel(
      {@JsonKey(name: "sub_cat_id") required int id,
      @JsonKey(name: "sub_cat_name") required String name,
      required String? imageUrl,
      required List<ItemModel> items}) = _$_SubCategoryModel;

  factory _SubCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_SubCategoryModel.fromJson;

  @override
  @JsonKey(name: "sub_cat_id")
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sub_cat_name")
  String get name => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  List<ItemModel> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubCategoryModelCopyWith<_SubCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
