// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'orders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrdersModel _$OrdersModelFromJson(Map<String, dynamic> json) {
  return _OrdersModel.fromJson(json);
}

/// @nodoc
class _$OrdersModelTearOff {
  const _$OrdersModelTearOff();

  _OrdersModel call(
      {required int orderId,
      required String orderDate,
      required String orderTime,
      required String shopName,
      required String status,
      required bool completed,
      required bool trackable,
      required int items}) {
    return _OrdersModel(
      orderId: orderId,
      orderDate: orderDate,
      orderTime: orderTime,
      shopName: shopName,
      status: status,
      completed: completed,
      trackable: trackable,
      items: items,
    );
  }

  OrdersModel fromJson(Map<String, Object> json) {
    return OrdersModel.fromJson(json);
  }
}

/// @nodoc
const $OrdersModel = _$OrdersModelTearOff();

/// @nodoc
mixin _$OrdersModel {
  int get orderId => throw _privateConstructorUsedError;
  String get orderDate => throw _privateConstructorUsedError;
  String get orderTime => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  bool get trackable => throw _privateConstructorUsedError;
  int get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersModelCopyWith<OrdersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersModelCopyWith<$Res> {
  factory $OrdersModelCopyWith(
          OrdersModel value, $Res Function(OrdersModel) then) =
      _$OrdersModelCopyWithImpl<$Res>;
  $Res call(
      {int orderId,
      String orderDate,
      String orderTime,
      String shopName,
      String status,
      bool completed,
      bool trackable,
      int items});
}

/// @nodoc
class _$OrdersModelCopyWithImpl<$Res> implements $OrdersModelCopyWith<$Res> {
  _$OrdersModelCopyWithImpl(this._value, this._then);

  final OrdersModel _value;
  // ignore: unused_field
  final $Res Function(OrdersModel) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? orderDate = freezed,
    Object? orderTime = freezed,
    Object? shopName = freezed,
    Object? status = freezed,
    Object? completed = freezed,
    Object? trackable = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      orderTime: orderTime == freezed
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      trackable: trackable == freezed
          ? _value.trackable
          : trackable // ignore: cast_nullable_to_non_nullable
              as bool,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OrdersModelCopyWith<$Res>
    implements $OrdersModelCopyWith<$Res> {
  factory _$OrdersModelCopyWith(
          _OrdersModel value, $Res Function(_OrdersModel) then) =
      __$OrdersModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int orderId,
      String orderDate,
      String orderTime,
      String shopName,
      String status,
      bool completed,
      bool trackable,
      int items});
}

/// @nodoc
class __$OrdersModelCopyWithImpl<$Res> extends _$OrdersModelCopyWithImpl<$Res>
    implements _$OrdersModelCopyWith<$Res> {
  __$OrdersModelCopyWithImpl(
      _OrdersModel _value, $Res Function(_OrdersModel) _then)
      : super(_value, (v) => _then(v as _OrdersModel));

  @override
  _OrdersModel get _value => super._value as _OrdersModel;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? orderDate = freezed,
    Object? orderTime = freezed,
    Object? shopName = freezed,
    Object? status = freezed,
    Object? completed = freezed,
    Object? trackable = freezed,
    Object? items = freezed,
  }) {
    return _then(_OrdersModel(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      orderTime: orderTime == freezed
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      trackable: trackable == freezed
          ? _value.trackable
          : trackable // ignore: cast_nullable_to_non_nullable
              as bool,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrdersModel implements _OrdersModel {
  const _$_OrdersModel(
      {required this.orderId,
      required this.orderDate,
      required this.orderTime,
      required this.shopName,
      required this.status,
      required this.completed,
      required this.trackable,
      required this.items});

  factory _$_OrdersModel.fromJson(Map<String, dynamic> json) =>
      _$_$_OrdersModelFromJson(json);

  @override
  final int orderId;
  @override
  final String orderDate;
  @override
  final String orderTime;
  @override
  final String shopName;
  @override
  final String status;
  @override
  final bool completed;
  @override
  final bool trackable;
  @override
  final int items;

  @override
  String toString() {
    return 'OrdersModel(orderId: $orderId, orderDate: $orderDate, orderTime: $orderTime, shopName: $shopName, status: $status, completed: $completed, trackable: $trackable, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrdersModel &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.orderDate, orderDate) ||
                const DeepCollectionEquality()
                    .equals(other.orderDate, orderDate)) &&
            (identical(other.orderTime, orderTime) ||
                const DeepCollectionEquality()
                    .equals(other.orderTime, orderTime)) &&
            (identical(other.shopName, shopName) ||
                const DeepCollectionEquality()
                    .equals(other.shopName, shopName)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)) &&
            (identical(other.trackable, trackable) ||
                const DeepCollectionEquality()
                    .equals(other.trackable, trackable)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(orderDate) ^
      const DeepCollectionEquality().hash(orderTime) ^
      const DeepCollectionEquality().hash(shopName) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(completed) ^
      const DeepCollectionEquality().hash(trackable) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$OrdersModelCopyWith<_OrdersModel> get copyWith =>
      __$OrdersModelCopyWithImpl<_OrdersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrdersModelToJson(this);
  }
}

abstract class _OrdersModel implements OrdersModel {
  const factory _OrdersModel(
      {required int orderId,
      required String orderDate,
      required String orderTime,
      required String shopName,
      required String status,
      required bool completed,
      required bool trackable,
      required int items}) = _$_OrdersModel;

  factory _OrdersModel.fromJson(Map<String, dynamic> json) =
      _$_OrdersModel.fromJson;

  @override
  int get orderId => throw _privateConstructorUsedError;
  @override
  String get orderDate => throw _privateConstructorUsedError;
  @override
  String get orderTime => throw _privateConstructorUsedError;
  @override
  String get shopName => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  bool get completed => throw _privateConstructorUsedError;
  @override
  bool get trackable => throw _privateConstructorUsedError;
  @override
  int get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrdersModelCopyWith<_OrdersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
