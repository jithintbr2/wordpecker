// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coupon_written_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CouponWrittenEventTearOff {
  const _$CouponWrittenEventTearOff();

  _CheckWritternCoupon checkCoupon(
      {required List<ItemVarientModel> items,
      required String couponCode,
      required int shopId,
      required double deliveryCharge,
      required void Function(CouponModel, List<dynamic>) onSelect}) {
    return _CheckWritternCoupon(
      items: items,
      couponCode: couponCode,
      shopId: shopId,
      deliveryCharge: deliveryCharge,
      onSelect: onSelect,
    );
  }
}

/// @nodoc
const $CouponWrittenEvent = _$CouponWrittenEventTearOff();

/// @nodoc
mixin _$CouponWrittenEvent {
  List<ItemVarientModel> get items => throw _privateConstructorUsedError;
  String get couponCode => throw _privateConstructorUsedError;
  int get shopId => throw _privateConstructorUsedError;
  double get deliveryCharge => throw _privateConstructorUsedError;
  void Function(CouponModel, List<dynamic>) get onSelect =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ItemVarientModel> items,
            String couponCode,
            int shopId,
            double deliveryCharge,
            void Function(CouponModel, List<dynamic>) onSelect)
        checkCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ItemVarientModel> items,
            String couponCode,
            int shopId,
            double deliveryCharge,
            void Function(CouponModel, List<dynamic>) onSelect)?
        checkCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckWritternCoupon value) checkCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckWritternCoupon value)? checkCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CouponWrittenEventCopyWith<CouponWrittenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponWrittenEventCopyWith<$Res> {
  factory $CouponWrittenEventCopyWith(
          CouponWrittenEvent value, $Res Function(CouponWrittenEvent) then) =
      _$CouponWrittenEventCopyWithImpl<$Res>;
  $Res call(
      {List<ItemVarientModel> items,
      String couponCode,
      int shopId,
      double deliveryCharge,
      void Function(CouponModel, List<dynamic>) onSelect});
}

/// @nodoc
class _$CouponWrittenEventCopyWithImpl<$Res>
    implements $CouponWrittenEventCopyWith<$Res> {
  _$CouponWrittenEventCopyWithImpl(this._value, this._then);

  final CouponWrittenEvent _value;
  // ignore: unused_field
  final $Res Function(CouponWrittenEvent) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? couponCode = freezed,
    Object? shopId = freezed,
    Object? deliveryCharge = freezed,
    Object? onSelect = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemVarientModel>,
      couponCode: couponCode == freezed
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryCharge: deliveryCharge == freezed
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      onSelect: onSelect == freezed
          ? _value.onSelect
          : onSelect // ignore: cast_nullable_to_non_nullable
              as void Function(CouponModel, List<dynamic>),
    ));
  }
}

/// @nodoc
abstract class _$CheckWritternCouponCopyWith<$Res>
    implements $CouponWrittenEventCopyWith<$Res> {
  factory _$CheckWritternCouponCopyWith(_CheckWritternCoupon value,
          $Res Function(_CheckWritternCoupon) then) =
      __$CheckWritternCouponCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ItemVarientModel> items,
      String couponCode,
      int shopId,
      double deliveryCharge,
      void Function(CouponModel, List<dynamic>) onSelect});
}

/// @nodoc
class __$CheckWritternCouponCopyWithImpl<$Res>
    extends _$CouponWrittenEventCopyWithImpl<$Res>
    implements _$CheckWritternCouponCopyWith<$Res> {
  __$CheckWritternCouponCopyWithImpl(
      _CheckWritternCoupon _value, $Res Function(_CheckWritternCoupon) _then)
      : super(_value, (v) => _then(v as _CheckWritternCoupon));

  @override
  _CheckWritternCoupon get _value => super._value as _CheckWritternCoupon;

  @override
  $Res call({
    Object? items = freezed,
    Object? couponCode = freezed,
    Object? shopId = freezed,
    Object? deliveryCharge = freezed,
    Object? onSelect = freezed,
  }) {
    return _then(_CheckWritternCoupon(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemVarientModel>,
      couponCode: couponCode == freezed
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryCharge: deliveryCharge == freezed
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      onSelect: onSelect == freezed
          ? _value.onSelect
          : onSelect // ignore: cast_nullable_to_non_nullable
              as void Function(CouponModel, List<dynamic>),
    ));
  }
}

/// @nodoc

class _$_CheckWritternCoupon
    with DiagnosticableTreeMixin
    implements _CheckWritternCoupon {
  const _$_CheckWritternCoupon(
      {required this.items,
      required this.couponCode,
      required this.shopId,
      required this.deliveryCharge,
      required this.onSelect});

  @override
  final List<ItemVarientModel> items;
  @override
  final String couponCode;
  @override
  final int shopId;
  @override
  final double deliveryCharge;
  @override
  final void Function(CouponModel, List<dynamic>) onSelect;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CouponWrittenEvent.checkCoupon(items: $items, couponCode: $couponCode, shopId: $shopId, deliveryCharge: $deliveryCharge, onSelect: $onSelect)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CouponWrittenEvent.checkCoupon'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('couponCode', couponCode))
      ..add(DiagnosticsProperty('shopId', shopId))
      ..add(DiagnosticsProperty('deliveryCharge', deliveryCharge))
      ..add(DiagnosticsProperty('onSelect', onSelect));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckWritternCoupon &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality()
                    .equals(other.couponCode, couponCode)) &&
            (identical(other.shopId, shopId) ||
                const DeepCollectionEquality().equals(other.shopId, shopId)) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryCharge, deliveryCharge)) &&
            (identical(other.onSelect, onSelect) ||
                const DeepCollectionEquality()
                    .equals(other.onSelect, onSelect)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(shopId) ^
      const DeepCollectionEquality().hash(deliveryCharge) ^
      const DeepCollectionEquality().hash(onSelect);

  @JsonKey(ignore: true)
  @override
  _$CheckWritternCouponCopyWith<_CheckWritternCoupon> get copyWith =>
      __$CheckWritternCouponCopyWithImpl<_CheckWritternCoupon>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ItemVarientModel> items,
            String couponCode,
            int shopId,
            double deliveryCharge,
            void Function(CouponModel, List<dynamic>) onSelect)
        checkCoupon,
  }) {
    return checkCoupon(items, couponCode, shopId, deliveryCharge, onSelect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ItemVarientModel> items,
            String couponCode,
            int shopId,
            double deliveryCharge,
            void Function(CouponModel, List<dynamic>) onSelect)?
        checkCoupon,
    required TResult orElse(),
  }) {
    if (checkCoupon != null) {
      return checkCoupon(items, couponCode, shopId, deliveryCharge, onSelect);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckWritternCoupon value) checkCoupon,
  }) {
    return checkCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckWritternCoupon value)? checkCoupon,
    required TResult orElse(),
  }) {
    if (checkCoupon != null) {
      return checkCoupon(this);
    }
    return orElse();
  }
}

abstract class _CheckWritternCoupon implements CouponWrittenEvent {
  const factory _CheckWritternCoupon(
          {required List<ItemVarientModel> items,
          required String couponCode,
          required int shopId,
          required double deliveryCharge,
          required void Function(CouponModel, List<dynamic>) onSelect}) =
      _$_CheckWritternCoupon;

  @override
  List<ItemVarientModel> get items => throw _privateConstructorUsedError;
  @override
  String get couponCode => throw _privateConstructorUsedError;
  @override
  int get shopId => throw _privateConstructorUsedError;
  @override
  double get deliveryCharge => throw _privateConstructorUsedError;
  @override
  void Function(CouponModel, List<dynamic>) get onSelect =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckWritternCouponCopyWith<_CheckWritternCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CouponWrittenStateTearOff {
  const _$CouponWrittenStateTearOff();

  _Busy busy() {
    return const _Busy();
  }

  _Idle idle() {
    return const _Idle();
  }
}

/// @nodoc
const $CouponWrittenState = _$CouponWrittenStateTearOff();

/// @nodoc
mixin _$CouponWrittenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() busy,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Busy value) busy,
    required TResult Function(_Idle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Busy value)? busy,
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponWrittenStateCopyWith<$Res> {
  factory $CouponWrittenStateCopyWith(
          CouponWrittenState value, $Res Function(CouponWrittenState) then) =
      _$CouponWrittenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CouponWrittenStateCopyWithImpl<$Res>
    implements $CouponWrittenStateCopyWith<$Res> {
  _$CouponWrittenStateCopyWithImpl(this._value, this._then);

  final CouponWrittenState _value;
  // ignore: unused_field
  final $Res Function(CouponWrittenState) _then;
}

/// @nodoc
abstract class _$BusyCopyWith<$Res> {
  factory _$BusyCopyWith(_Busy value, $Res Function(_Busy) then) =
      __$BusyCopyWithImpl<$Res>;
}

/// @nodoc
class __$BusyCopyWithImpl<$Res> extends _$CouponWrittenStateCopyWithImpl<$Res>
    implements _$BusyCopyWith<$Res> {
  __$BusyCopyWithImpl(_Busy _value, $Res Function(_Busy) _then)
      : super(_value, (v) => _then(v as _Busy));

  @override
  _Busy get _value => super._value as _Busy;
}

/// @nodoc

class _$_Busy with DiagnosticableTreeMixin implements _Busy {
  const _$_Busy();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CouponWrittenState.busy()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CouponWrittenState.busy'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Busy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() busy,
    required TResult Function() idle,
  }) {
    return busy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Busy value) busy,
    required TResult Function(_Idle value) idle,
  }) {
    return busy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Busy value)? busy,
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy(this);
    }
    return orElse();
  }
}

abstract class _Busy implements CouponWrittenState {
  const factory _Busy() = _$_Busy;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$CouponWrittenStateCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;
}

/// @nodoc

class _$_Idle with DiagnosticableTreeMixin implements _Idle {
  const _$_Idle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CouponWrittenState.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CouponWrittenState.idle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() busy,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? busy,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Busy value) busy,
    required TResult Function(_Idle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Busy value)? busy,
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements CouponWrittenState {
  const factory _Idle() = _$_Idle;
}
