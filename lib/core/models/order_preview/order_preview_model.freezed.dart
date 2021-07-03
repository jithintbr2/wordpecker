// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderPreviewModel _$OrderPreviewModelFromJson(Map<String, dynamic> json) {
  return _OrderPreviewModel.fromJson(json);
}

/// @nodoc
class _$OrderPreviewModelTearOff {
  const _$OrderPreviewModelTearOff();

  _OrderPreviewModel call(
      {required double walletAmount,
      required List<ItemVarientModel> addonsList,
      required PaymentOptionsModel paymentMethods}) {
    return _OrderPreviewModel(
      walletAmount: walletAmount,
      addonsList: addonsList,
      paymentMethods: paymentMethods,
    );
  }

  OrderPreviewModel fromJson(Map<String, Object> json) {
    return OrderPreviewModel.fromJson(json);
  }
}

/// @nodoc
const $OrderPreviewModel = _$OrderPreviewModelTearOff();

/// @nodoc
mixin _$OrderPreviewModel {
  double get walletAmount => throw _privateConstructorUsedError;
  List<ItemVarientModel> get addonsList => throw _privateConstructorUsedError;
  PaymentOptionsModel get paymentMethods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPreviewModelCopyWith<OrderPreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPreviewModelCopyWith<$Res> {
  factory $OrderPreviewModelCopyWith(
          OrderPreviewModel value, $Res Function(OrderPreviewModel) then) =
      _$OrderPreviewModelCopyWithImpl<$Res>;
  $Res call(
      {double walletAmount,
      List<ItemVarientModel> addonsList,
      PaymentOptionsModel paymentMethods});

  $PaymentOptionsModelCopyWith<$Res> get paymentMethods;
}

/// @nodoc
class _$OrderPreviewModelCopyWithImpl<$Res>
    implements $OrderPreviewModelCopyWith<$Res> {
  _$OrderPreviewModelCopyWithImpl(this._value, this._then);

  final OrderPreviewModel _value;
  // ignore: unused_field
  final $Res Function(OrderPreviewModel) _then;

  @override
  $Res call({
    Object? walletAmount = freezed,
    Object? addonsList = freezed,
    Object? paymentMethods = freezed,
  }) {
    return _then(_value.copyWith(
      walletAmount: walletAmount == freezed
          ? _value.walletAmount
          : walletAmount // ignore: cast_nullable_to_non_nullable
              as double,
      addonsList: addonsList == freezed
          ? _value.addonsList
          : addonsList // ignore: cast_nullable_to_non_nullable
              as List<ItemVarientModel>,
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as PaymentOptionsModel,
    ));
  }

  @override
  $PaymentOptionsModelCopyWith<$Res> get paymentMethods {
    return $PaymentOptionsModelCopyWith<$Res>(_value.paymentMethods, (value) {
      return _then(_value.copyWith(paymentMethods: value));
    });
  }
}

/// @nodoc
abstract class _$OrderPreviewModelCopyWith<$Res>
    implements $OrderPreviewModelCopyWith<$Res> {
  factory _$OrderPreviewModelCopyWith(
          _OrderPreviewModel value, $Res Function(_OrderPreviewModel) then) =
      __$OrderPreviewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double walletAmount,
      List<ItemVarientModel> addonsList,
      PaymentOptionsModel paymentMethods});

  @override
  $PaymentOptionsModelCopyWith<$Res> get paymentMethods;
}

/// @nodoc
class __$OrderPreviewModelCopyWithImpl<$Res>
    extends _$OrderPreviewModelCopyWithImpl<$Res>
    implements _$OrderPreviewModelCopyWith<$Res> {
  __$OrderPreviewModelCopyWithImpl(
      _OrderPreviewModel _value, $Res Function(_OrderPreviewModel) _then)
      : super(_value, (v) => _then(v as _OrderPreviewModel));

  @override
  _OrderPreviewModel get _value => super._value as _OrderPreviewModel;

  @override
  $Res call({
    Object? walletAmount = freezed,
    Object? addonsList = freezed,
    Object? paymentMethods = freezed,
  }) {
    return _then(_OrderPreviewModel(
      walletAmount: walletAmount == freezed
          ? _value.walletAmount
          : walletAmount // ignore: cast_nullable_to_non_nullable
              as double,
      addonsList: addonsList == freezed
          ? _value.addonsList
          : addonsList // ignore: cast_nullable_to_non_nullable
              as List<ItemVarientModel>,
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as PaymentOptionsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderPreviewModel implements _OrderPreviewModel {
  const _$_OrderPreviewModel(
      {required this.walletAmount,
      required this.addonsList,
      required this.paymentMethods});

  factory _$_OrderPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderPreviewModelFromJson(json);

  @override
  final double walletAmount;
  @override
  final List<ItemVarientModel> addonsList;
  @override
  final PaymentOptionsModel paymentMethods;

  @override
  String toString() {
    return 'OrderPreviewModel(walletAmount: $walletAmount, addonsList: $addonsList, paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderPreviewModel &&
            (identical(other.walletAmount, walletAmount) ||
                const DeepCollectionEquality()
                    .equals(other.walletAmount, walletAmount)) &&
            (identical(other.addonsList, addonsList) ||
                const DeepCollectionEquality()
                    .equals(other.addonsList, addonsList)) &&
            (identical(other.paymentMethods, paymentMethods) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethods, paymentMethods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(walletAmount) ^
      const DeepCollectionEquality().hash(addonsList) ^
      const DeepCollectionEquality().hash(paymentMethods);

  @JsonKey(ignore: true)
  @override
  _$OrderPreviewModelCopyWith<_OrderPreviewModel> get copyWith =>
      __$OrderPreviewModelCopyWithImpl<_OrderPreviewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderPreviewModelToJson(this);
  }
}

abstract class _OrderPreviewModel implements OrderPreviewModel {
  const factory _OrderPreviewModel(
      {required double walletAmount,
      required List<ItemVarientModel> addonsList,
      required PaymentOptionsModel paymentMethods}) = _$_OrderPreviewModel;

  factory _OrderPreviewModel.fromJson(Map<String, dynamic> json) =
      _$_OrderPreviewModel.fromJson;

  @override
  double get walletAmount => throw _privateConstructorUsedError;
  @override
  List<ItemVarientModel> get addonsList => throw _privateConstructorUsedError;
  @override
  PaymentOptionsModel get paymentMethods => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderPreviewModelCopyWith<_OrderPreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentOptionsModel _$PaymentOptionsModelFromJson(Map<String, dynamic> json) {
  return _PaymentOptionsModel.fromJson(json);
}

/// @nodoc
class _$PaymentOptionsModelTearOff {
  const _$PaymentOptionsModelTearOff();

  _PaymentOptionsModel call({required bool onlinePayment}) {
    return _PaymentOptionsModel(
      onlinePayment: onlinePayment,
    );
  }

  PaymentOptionsModel fromJson(Map<String, Object> json) {
    return PaymentOptionsModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentOptionsModel = _$PaymentOptionsModelTearOff();

/// @nodoc
mixin _$PaymentOptionsModel {
  bool get onlinePayment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentOptionsModelCopyWith<PaymentOptionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentOptionsModelCopyWith<$Res> {
  factory $PaymentOptionsModelCopyWith(
          PaymentOptionsModel value, $Res Function(PaymentOptionsModel) then) =
      _$PaymentOptionsModelCopyWithImpl<$Res>;
  $Res call({bool onlinePayment});
}

/// @nodoc
class _$PaymentOptionsModelCopyWithImpl<$Res>
    implements $PaymentOptionsModelCopyWith<$Res> {
  _$PaymentOptionsModelCopyWithImpl(this._value, this._then);

  final PaymentOptionsModel _value;
  // ignore: unused_field
  final $Res Function(PaymentOptionsModel) _then;

  @override
  $Res call({
    Object? onlinePayment = freezed,
  }) {
    return _then(_value.copyWith(
      onlinePayment: onlinePayment == freezed
          ? _value.onlinePayment
          : onlinePayment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PaymentOptionsModelCopyWith<$Res>
    implements $PaymentOptionsModelCopyWith<$Res> {
  factory _$PaymentOptionsModelCopyWith(_PaymentOptionsModel value,
          $Res Function(_PaymentOptionsModel) then) =
      __$PaymentOptionsModelCopyWithImpl<$Res>;
  @override
  $Res call({bool onlinePayment});
}

/// @nodoc
class __$PaymentOptionsModelCopyWithImpl<$Res>
    extends _$PaymentOptionsModelCopyWithImpl<$Res>
    implements _$PaymentOptionsModelCopyWith<$Res> {
  __$PaymentOptionsModelCopyWithImpl(
      _PaymentOptionsModel _value, $Res Function(_PaymentOptionsModel) _then)
      : super(_value, (v) => _then(v as _PaymentOptionsModel));

  @override
  _PaymentOptionsModel get _value => super._value as _PaymentOptionsModel;

  @override
  $Res call({
    Object? onlinePayment = freezed,
  }) {
    return _then(_PaymentOptionsModel(
      onlinePayment: onlinePayment == freezed
          ? _value.onlinePayment
          : onlinePayment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentOptionsModel implements _PaymentOptionsModel {
  const _$_PaymentOptionsModel({required this.onlinePayment});

  factory _$_PaymentOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentOptionsModelFromJson(json);

  @override
  final bool onlinePayment;

  @override
  String toString() {
    return 'PaymentOptionsModel(onlinePayment: $onlinePayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentOptionsModel &&
            (identical(other.onlinePayment, onlinePayment) ||
                const DeepCollectionEquality()
                    .equals(other.onlinePayment, onlinePayment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(onlinePayment);

  @JsonKey(ignore: true)
  @override
  _$PaymentOptionsModelCopyWith<_PaymentOptionsModel> get copyWith =>
      __$PaymentOptionsModelCopyWithImpl<_PaymentOptionsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentOptionsModelToJson(this);
  }
}

abstract class _PaymentOptionsModel implements PaymentOptionsModel {
  const factory _PaymentOptionsModel({required bool onlinePayment}) =
      _$_PaymentOptionsModel;

  factory _PaymentOptionsModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentOptionsModel.fromJson;

  @override
  bool get onlinePayment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentOptionsModelCopyWith<_PaymentOptionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
