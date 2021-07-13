// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'place_order_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceOrderButtonEventTearOff {
  const _$PlaceOrderButtonEventTearOff();

  _PlaceOrder placeOrder(
      {required CartService service,
      required List<ItemVarientModel> items,
      required int shopId,
      required int addressId,
      required String remark,
      required bool isAdvancedOrder,
      required String dateTime}) {
    return _PlaceOrder(
      service: service,
      items: items,
      shopId: shopId,
      addressId: addressId,
      remark: remark,
      isAdvancedOrder: isAdvancedOrder,
      dateTime: dateTime,
    );
  }
}

/// @nodoc
const $PlaceOrderButtonEvent = _$PlaceOrderButtonEventTearOff();

/// @nodoc
mixin _$PlaceOrderButtonEvent {
  CartService get service => throw _privateConstructorUsedError;
  List<ItemVarientModel> get items => throw _privateConstructorUsedError;
  int get shopId => throw _privateConstructorUsedError;
  int get addressId => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  bool get isAdvancedOrder => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CartService service,
            List<ItemVarientModel> items,
            int shopId,
            int addressId,
            String remark,
            bool isAdvancedOrder,
            String dateTime)
        placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CartService service,
            List<ItemVarientModel> items,
            int shopId,
            int addressId,
            String remark,
            bool isAdvancedOrder,
            String dateTime)?
        placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceOrderButtonEventCopyWith<PlaceOrderButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderButtonEventCopyWith<$Res> {
  factory $PlaceOrderButtonEventCopyWith(PlaceOrderButtonEvent value,
          $Res Function(PlaceOrderButtonEvent) then) =
      _$PlaceOrderButtonEventCopyWithImpl<$Res>;
  $Res call(
      {CartService service,
      List<ItemVarientModel> items,
      int shopId,
      int addressId,
      String remark,
      bool isAdvancedOrder,
      String dateTime});
}

/// @nodoc
class _$PlaceOrderButtonEventCopyWithImpl<$Res>
    implements $PlaceOrderButtonEventCopyWith<$Res> {
  _$PlaceOrderButtonEventCopyWithImpl(this._value, this._then);

  final PlaceOrderButtonEvent _value;
  // ignore: unused_field
  final $Res Function(PlaceOrderButtonEvent) _then;

  @override
  $Res call({
    Object? service = freezed,
    Object? items = freezed,
    Object? shopId = freezed,
    Object? addressId = freezed,
    Object? remark = freezed,
    Object? isAdvancedOrder = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as CartService,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemVarientModel>,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isAdvancedOrder: isAdvancedOrder == freezed
          ? _value.isAdvancedOrder
          : isAdvancedOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PlaceOrderCopyWith<$Res>
    implements $PlaceOrderButtonEventCopyWith<$Res> {
  factory _$PlaceOrderCopyWith(
          _PlaceOrder value, $Res Function(_PlaceOrder) then) =
      __$PlaceOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {CartService service,
      List<ItemVarientModel> items,
      int shopId,
      int addressId,
      String remark,
      bool isAdvancedOrder,
      String dateTime});
}

/// @nodoc
class __$PlaceOrderCopyWithImpl<$Res>
    extends _$PlaceOrderButtonEventCopyWithImpl<$Res>
    implements _$PlaceOrderCopyWith<$Res> {
  __$PlaceOrderCopyWithImpl(
      _PlaceOrder _value, $Res Function(_PlaceOrder) _then)
      : super(_value, (v) => _then(v as _PlaceOrder));

  @override
  _PlaceOrder get _value => super._value as _PlaceOrder;

  @override
  $Res call({
    Object? service = freezed,
    Object? items = freezed,
    Object? shopId = freezed,
    Object? addressId = freezed,
    Object? remark = freezed,
    Object? isAdvancedOrder = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_PlaceOrder(
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as CartService,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemVarientModel>,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isAdvancedOrder: isAdvancedOrder == freezed
          ? _value.isAdvancedOrder
          : isAdvancedOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlaceOrder implements _PlaceOrder {
  const _$_PlaceOrder(
      {required this.service,
      required this.items,
      required this.shopId,
      required this.addressId,
      required this.remark,
      required this.isAdvancedOrder,
      required this.dateTime});

  @override
  final CartService service;
  @override
  final List<ItemVarientModel> items;
  @override
  final int shopId;
  @override
  final int addressId;
  @override
  final String remark;
  @override
  final bool isAdvancedOrder;
  @override
  final String dateTime;

  @override
  String toString() {
    return 'PlaceOrderButtonEvent.placeOrder(service: $service, items: $items, shopId: $shopId, addressId: $addressId, remark: $remark, isAdvancedOrder: $isAdvancedOrder, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOrder &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.shopId, shopId) ||
                const DeepCollectionEquality().equals(other.shopId, shopId)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.isAdvancedOrder, isAdvancedOrder) ||
                const DeepCollectionEquality()
                    .equals(other.isAdvancedOrder, isAdvancedOrder)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(shopId) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(isAdvancedOrder) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderCopyWith<_PlaceOrder> get copyWith =>
      __$PlaceOrderCopyWithImpl<_PlaceOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CartService service,
            List<ItemVarientModel> items,
            int shopId,
            int addressId,
            String remark,
            bool isAdvancedOrder,
            String dateTime)
        placeOrder,
  }) {
    return placeOrder(
        service, items, shopId, addressId, remark, isAdvancedOrder, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CartService service,
            List<ItemVarientModel> items,
            int shopId,
            int addressId,
            String remark,
            bool isAdvancedOrder,
            String dateTime)?
        placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(
          service, items, shopId, addressId, remark, isAdvancedOrder, dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrder implements PlaceOrderButtonEvent {
  const factory _PlaceOrder(
      {required CartService service,
      required List<ItemVarientModel> items,
      required int shopId,
      required int addressId,
      required String remark,
      required bool isAdvancedOrder,
      required String dateTime}) = _$_PlaceOrder;

  @override
  CartService get service => throw _privateConstructorUsedError;
  @override
  List<ItemVarientModel> get items => throw _privateConstructorUsedError;
  @override
  int get shopId => throw _privateConstructorUsedError;
  @override
  int get addressId => throw _privateConstructorUsedError;
  @override
  String get remark => throw _privateConstructorUsedError;
  @override
  bool get isAdvancedOrder => throw _privateConstructorUsedError;
  @override
  String get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceOrderCopyWith<_PlaceOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlaceOrderButtonStateTearOff {
  const _$PlaceOrderButtonStateTearOff();

  _ButtonInitial buttonInitial() {
    return const _ButtonInitial();
  }

  _ButtonLoading buttonLoading() {
    return const _ButtonLoading();
  }
}

/// @nodoc
const $PlaceOrderButtonState = _$PlaceOrderButtonStateTearOff();

/// @nodoc
mixin _$PlaceOrderButtonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonInitial,
    required TResult Function() buttonLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonInitial,
    TResult Function()? buttonLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonInitial value) buttonInitial,
    required TResult Function(_ButtonLoading value) buttonLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonInitial value)? buttonInitial,
    TResult Function(_ButtonLoading value)? buttonLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderButtonStateCopyWith<$Res> {
  factory $PlaceOrderButtonStateCopyWith(PlaceOrderButtonState value,
          $Res Function(PlaceOrderButtonState) then) =
      _$PlaceOrderButtonStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceOrderButtonStateCopyWithImpl<$Res>
    implements $PlaceOrderButtonStateCopyWith<$Res> {
  _$PlaceOrderButtonStateCopyWithImpl(this._value, this._then);

  final PlaceOrderButtonState _value;
  // ignore: unused_field
  final $Res Function(PlaceOrderButtonState) _then;
}

/// @nodoc
abstract class _$ButtonInitialCopyWith<$Res> {
  factory _$ButtonInitialCopyWith(
          _ButtonInitial value, $Res Function(_ButtonInitial) then) =
      __$ButtonInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ButtonInitialCopyWithImpl<$Res>
    extends _$PlaceOrderButtonStateCopyWithImpl<$Res>
    implements _$ButtonInitialCopyWith<$Res> {
  __$ButtonInitialCopyWithImpl(
      _ButtonInitial _value, $Res Function(_ButtonInitial) _then)
      : super(_value, (v) => _then(v as _ButtonInitial));

  @override
  _ButtonInitial get _value => super._value as _ButtonInitial;
}

/// @nodoc

class _$_ButtonInitial implements _ButtonInitial {
  const _$_ButtonInitial();

  @override
  String toString() {
    return 'PlaceOrderButtonState.buttonInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ButtonInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonInitial,
    required TResult Function() buttonLoading,
  }) {
    return buttonInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonInitial,
    TResult Function()? buttonLoading,
    required TResult orElse(),
  }) {
    if (buttonInitial != null) {
      return buttonInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonInitial value) buttonInitial,
    required TResult Function(_ButtonLoading value) buttonLoading,
  }) {
    return buttonInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonInitial value)? buttonInitial,
    TResult Function(_ButtonLoading value)? buttonLoading,
    required TResult orElse(),
  }) {
    if (buttonInitial != null) {
      return buttonInitial(this);
    }
    return orElse();
  }
}

abstract class _ButtonInitial implements PlaceOrderButtonState {
  const factory _ButtonInitial() = _$_ButtonInitial;
}

/// @nodoc
abstract class _$ButtonLoadingCopyWith<$Res> {
  factory _$ButtonLoadingCopyWith(
          _ButtonLoading value, $Res Function(_ButtonLoading) then) =
      __$ButtonLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ButtonLoadingCopyWithImpl<$Res>
    extends _$PlaceOrderButtonStateCopyWithImpl<$Res>
    implements _$ButtonLoadingCopyWith<$Res> {
  __$ButtonLoadingCopyWithImpl(
      _ButtonLoading _value, $Res Function(_ButtonLoading) _then)
      : super(_value, (v) => _then(v as _ButtonLoading));

  @override
  _ButtonLoading get _value => super._value as _ButtonLoading;
}

/// @nodoc

class _$_ButtonLoading implements _ButtonLoading {
  const _$_ButtonLoading();

  @override
  String toString() {
    return 'PlaceOrderButtonState.buttonLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ButtonLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonInitial,
    required TResult Function() buttonLoading,
  }) {
    return buttonLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonInitial,
    TResult Function()? buttonLoading,
    required TResult orElse(),
  }) {
    if (buttonLoading != null) {
      return buttonLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonInitial value) buttonInitial,
    required TResult Function(_ButtonLoading value) buttonLoading,
  }) {
    return buttonLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonInitial value)? buttonInitial,
    TResult Function(_ButtonLoading value)? buttonLoading,
    required TResult orElse(),
  }) {
    if (buttonLoading != null) {
      return buttonLoading(this);
    }
    return orElse();
  }
}

abstract class _ButtonLoading implements PlaceOrderButtonState {
  const factory _ButtonLoading() = _$_ButtonLoading;
}
