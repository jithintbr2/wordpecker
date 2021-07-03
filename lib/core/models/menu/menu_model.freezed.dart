// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return _MenuModel.fromJson(json);
}

/// @nodoc
class _$MenuModelTearOff {
  const _$MenuModelTearOff();

  _MenuModel call(
      {@JsonKey(name: "menuId") required int id,
      required String title,
      @JsonKey(name: "item") required List<ItemModel> items}) {
    return _MenuModel(
      id: id,
      title: title,
      items: items,
    );
  }

  MenuModel fromJson(Map<String, Object> json) {
    return MenuModel.fromJson(json);
  }
}

/// @nodoc
const $MenuModel = _$MenuModelTearOff();

/// @nodoc
mixin _$MenuModel {
  @JsonKey(name: "menuId")
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "item")
  List<ItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "menuId") int id,
      String title,
      @JsonKey(name: "item") List<ItemModel> items});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res> implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  final MenuModel _value;
  // ignore: unused_field
  final $Res Function(MenuModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$MenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory _$MenuModelCopyWith(
          _MenuModel value, $Res Function(_MenuModel) then) =
      __$MenuModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "menuId") int id,
      String title,
      @JsonKey(name: "item") List<ItemModel> items});
}

/// @nodoc
class __$MenuModelCopyWithImpl<$Res> extends _$MenuModelCopyWithImpl<$Res>
    implements _$MenuModelCopyWith<$Res> {
  __$MenuModelCopyWithImpl(_MenuModel _value, $Res Function(_MenuModel) _then)
      : super(_value, (v) => _then(v as _MenuModel));

  @override
  _MenuModel get _value => super._value as _MenuModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? items = freezed,
  }) {
    return _then(_MenuModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuModel with DiagnosticableTreeMixin implements _MenuModel {
  const _$_MenuModel(
      {@JsonKey(name: "menuId") required this.id,
      required this.title,
      @JsonKey(name: "item") required this.items});

  factory _$_MenuModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MenuModelFromJson(json);

  @override
  @JsonKey(name: "menuId")
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: "item")
  final List<ItemModel> items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuModel(id: $id, title: $title, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenuModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      __$MenuModelCopyWithImpl<_MenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MenuModelToJson(this);
  }
}

abstract class _MenuModel implements MenuModel {
  const factory _MenuModel(
      {@JsonKey(name: "menuId") required int id,
      required String title,
      @JsonKey(name: "item") required List<ItemModel> items}) = _$_MenuModel;

  factory _MenuModel.fromJson(Map<String, dynamic> json) =
      _$_MenuModel.fromJson;

  @override
  @JsonKey(name: "menuId")
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item")
  List<ItemModel> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
