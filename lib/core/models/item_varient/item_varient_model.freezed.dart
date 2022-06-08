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
      required int itemId,
      required int shopId,
      required String shopName,
      String? tag,
      @JsonKey(name: "imgUrl") required String image,
      String? description,
      @JsonKey(name: "itemCost") double? salePrice,
      required double mrp,
      int? maxQuantity,
      @JsonKey(defaultValue: []) List<String>? itemImages,
      @JsonKey(defaultValue: 1) double? aspectRatio,
      String? authorName,
      String? language,
      String? bindingType,
      String? isbn,
      String? edition,
      String? noOfPages,
      String? publishingDate,
      List<String>? categories}) {
    return _ItemVarientModel(
      varientId: varientId,
      varientType: varientType,
      varientName: varientName,
      itemName: itemName,
      itemId: itemId,
      shopId: shopId,
      shopName: shopName,
      tag: tag,
      image: image,
      description: description,
      salePrice: salePrice,
      mrp: mrp,
      maxQuantity: maxQuantity,
      itemImages: itemImages,
      aspectRatio: aspectRatio,
      authorName: authorName,
      language: language,
      bindingType: bindingType,
      isbn: isbn,
      edition: edition,
      noOfPages: noOfPages,
      publishingDate: publishingDate,
      categories: categories,
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
  int get itemId => throw _privateConstructorUsedError;
  int get shopId => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  @JsonKey(name: "imgUrl")
  String get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "itemCost")
  double? get salePrice => throw _privateConstructorUsedError;
  double get mrp => throw _privateConstructorUsedError;
  int? get maxQuantity => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String>? get itemImages => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 1)
  double? get aspectRatio => throw _privateConstructorUsedError;
  String? get authorName => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get bindingType => throw _privateConstructorUsedError;
  String? get isbn => throw _privateConstructorUsedError;
  String? get edition => throw _privateConstructorUsedError;
  String? get noOfPages => throw _privateConstructorUsedError;
  String? get publishingDate => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;

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
      int itemId,
      int shopId,
      String shopName,
      String? tag,
      @JsonKey(name: "imgUrl") String image,
      String? description,
      @JsonKey(name: "itemCost") double? salePrice,
      double mrp,
      int? maxQuantity,
      @JsonKey(defaultValue: []) List<String>? itemImages,
      @JsonKey(defaultValue: 1) double? aspectRatio,
      String? authorName,
      String? language,
      String? bindingType,
      String? isbn,
      String? edition,
      String? noOfPages,
      String? publishingDate,
      List<String>? categories});
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
    Object? itemId = freezed,
    Object? shopId = freezed,
    Object? shopName = freezed,
    Object? tag = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? salePrice = freezed,
    Object? mrp = freezed,
    Object? maxQuantity = freezed,
    Object? itemImages = freezed,
    Object? aspectRatio = freezed,
    Object? authorName = freezed,
    Object? language = freezed,
    Object? bindingType = freezed,
    Object? isbn = freezed,
    Object? edition = freezed,
    Object? noOfPages = freezed,
    Object? publishingDate = freezed,
    Object? categories = freezed,
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
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
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
      itemImages: itemImages == freezed
          ? _value.itemImages
          : itemImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aspectRatio: aspectRatio == freezed
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      bindingType: bindingType == freezed
          ? _value.bindingType
          : bindingType // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      edition: edition == freezed
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfPages: noOfPages == freezed
          ? _value.noOfPages
          : noOfPages // ignore: cast_nullable_to_non_nullable
              as String?,
      publishingDate: publishingDate == freezed
          ? _value.publishingDate
          : publishingDate // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      int itemId,
      int shopId,
      String shopName,
      String? tag,
      @JsonKey(name: "imgUrl") String image,
      String? description,
      @JsonKey(name: "itemCost") double? salePrice,
      double mrp,
      int? maxQuantity,
      @JsonKey(defaultValue: []) List<String>? itemImages,
      @JsonKey(defaultValue: 1) double? aspectRatio,
      String? authorName,
      String? language,
      String? bindingType,
      String? isbn,
      String? edition,
      String? noOfPages,
      String? publishingDate,
      List<String>? categories});
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
    Object? itemId = freezed,
    Object? shopId = freezed,
    Object? shopName = freezed,
    Object? tag = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? salePrice = freezed,
    Object? mrp = freezed,
    Object? maxQuantity = freezed,
    Object? itemImages = freezed,
    Object? aspectRatio = freezed,
    Object? authorName = freezed,
    Object? language = freezed,
    Object? bindingType = freezed,
    Object? isbn = freezed,
    Object? edition = freezed,
    Object? noOfPages = freezed,
    Object? publishingDate = freezed,
    Object? categories = freezed,
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
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
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
      itemImages: itemImages == freezed
          ? _value.itemImages
          : itemImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aspectRatio: aspectRatio == freezed
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      bindingType: bindingType == freezed
          ? _value.bindingType
          : bindingType // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      edition: edition == freezed
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfPages: noOfPages == freezed
          ? _value.noOfPages
          : noOfPages // ignore: cast_nullable_to_non_nullable
              as String?,
      publishingDate: publishingDate == freezed
          ? _value.publishingDate
          : publishingDate // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      required this.itemId,
      required this.shopId,
      required this.shopName,
      this.tag,
      @JsonKey(name: "imgUrl") required this.image,
      this.description,
      @JsonKey(name: "itemCost") this.salePrice,
      required this.mrp,
      this.maxQuantity,
      @JsonKey(defaultValue: []) this.itemImages,
      @JsonKey(defaultValue: 1) this.aspectRatio,
      this.authorName,
      this.language,
      this.bindingType,
      this.isbn,
      this.edition,
      this.noOfPages,
      this.publishingDate,
      this.categories});

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
  final int itemId;
  @override
  final int shopId;
  @override
  final String shopName;
  @override
  final String? tag;
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
  @JsonKey(defaultValue: [])
  final List<String>? itemImages;
  @override
  @JsonKey(defaultValue: 1)
  final double? aspectRatio;
  @override
  final String? authorName;
  @override
  final String? language;
  @override
  final String? bindingType;
  @override
  final String? isbn;
  @override
  final String? edition;
  @override
  final String? noOfPages;
  @override
  final String? publishingDate;
  @override
  final List<String>? categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemVarientModel(varientId: $varientId, varientType: $varientType, varientName: $varientName, itemName: $itemName, itemId: $itemId, shopId: $shopId, shopName: $shopName, tag: $tag, image: $image, description: $description, salePrice: $salePrice, mrp: $mrp, maxQuantity: $maxQuantity, itemImages: $itemImages, aspectRatio: $aspectRatio, authorName: $authorName, language: $language, bindingType: $bindingType, isbn: $isbn, edition: $edition, noOfPages: $noOfPages, publishingDate: $publishingDate, categories: $categories)';
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
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('shopId', shopId))
      ..add(DiagnosticsProperty('shopName', shopName))
      ..add(DiagnosticsProperty('tag', tag))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('salePrice', salePrice))
      ..add(DiagnosticsProperty('mrp', mrp))
      ..add(DiagnosticsProperty('maxQuantity', maxQuantity))
      ..add(DiagnosticsProperty('itemImages', itemImages))
      ..add(DiagnosticsProperty('aspectRatio', aspectRatio))
      ..add(DiagnosticsProperty('authorName', authorName))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('bindingType', bindingType))
      ..add(DiagnosticsProperty('isbn', isbn))
      ..add(DiagnosticsProperty('edition', edition))
      ..add(DiagnosticsProperty('noOfPages', noOfPages))
      ..add(DiagnosticsProperty('publishingDate', publishingDate))
      ..add(DiagnosticsProperty('categories', categories));
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
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.shopId, shopId) ||
                const DeepCollectionEquality().equals(other.shopId, shopId)) &&
            (identical(other.shopName, shopName) ||
                const DeepCollectionEquality()
                    .equals(other.shopName, shopName)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
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
                    .equals(other.maxQuantity, maxQuantity)) &&
            (identical(other.itemImages, itemImages) ||
                const DeepCollectionEquality()
                    .equals(other.itemImages, itemImages)) &&
            (identical(other.aspectRatio, aspectRatio) ||
                const DeepCollectionEquality()
                    .equals(other.aspectRatio, aspectRatio)) &&
            (identical(other.authorName, authorName) ||
                const DeepCollectionEquality()
                    .equals(other.authorName, authorName)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.bindingType, bindingType) ||
                const DeepCollectionEquality()
                    .equals(other.bindingType, bindingType)) &&
            (identical(other.isbn, isbn) ||
                const DeepCollectionEquality().equals(other.isbn, isbn)) &&
            (identical(other.edition, edition) ||
                const DeepCollectionEquality()
                    .equals(other.edition, edition)) &&
            (identical(other.noOfPages, noOfPages) ||
                const DeepCollectionEquality()
                    .equals(other.noOfPages, noOfPages)) &&
            (identical(other.publishingDate, publishingDate) ||
                const DeepCollectionEquality()
                    .equals(other.publishingDate, publishingDate)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(varientId) ^
      const DeepCollectionEquality().hash(varientType) ^
      const DeepCollectionEquality().hash(varientName) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(shopId) ^
      const DeepCollectionEquality().hash(shopName) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(salePrice) ^
      const DeepCollectionEquality().hash(mrp) ^
      const DeepCollectionEquality().hash(maxQuantity) ^
      const DeepCollectionEquality().hash(itemImages) ^
      const DeepCollectionEquality().hash(aspectRatio) ^
      const DeepCollectionEquality().hash(authorName) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(bindingType) ^
      const DeepCollectionEquality().hash(isbn) ^
      const DeepCollectionEquality().hash(edition) ^
      const DeepCollectionEquality().hash(noOfPages) ^
      const DeepCollectionEquality().hash(publishingDate) ^
      const DeepCollectionEquality().hash(categories);

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
      required int itemId,
      required int shopId,
      required String shopName,
      String? tag,
      @JsonKey(name: "imgUrl") required String image,
      String? description,
      @JsonKey(name: "itemCost") double? salePrice,
      required double mrp,
      int? maxQuantity,
      @JsonKey(defaultValue: []) List<String>? itemImages,
      @JsonKey(defaultValue: 1) double? aspectRatio,
      String? authorName,
      String? language,
      String? bindingType,
      String? isbn,
      String? edition,
      String? noOfPages,
      String? publishingDate,
      List<String>? categories}) = _$_ItemVarientModel;

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
  int get itemId => throw _privateConstructorUsedError;
  @override
  int get shopId => throw _privateConstructorUsedError;
  @override
  String get shopName => throw _privateConstructorUsedError;
  @override
  String? get tag => throw _privateConstructorUsedError;
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
  @JsonKey(defaultValue: [])
  List<String>? get itemImages => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: 1)
  double? get aspectRatio => throw _privateConstructorUsedError;
  @override
  String? get authorName => throw _privateConstructorUsedError;
  @override
  String? get language => throw _privateConstructorUsedError;
  @override
  String? get bindingType => throw _privateConstructorUsedError;
  @override
  String? get isbn => throw _privateConstructorUsedError;
  @override
  String? get edition => throw _privateConstructorUsedError;
  @override
  String? get noOfPages => throw _privateConstructorUsedError;
  @override
  String? get publishingDate => throw _privateConstructorUsedError;
  @override
  List<String>? get categories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemVarientModelCopyWith<_ItemVarientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
