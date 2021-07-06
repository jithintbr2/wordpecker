// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
class _$OrderDetailsModelTearOff {
  const _$OrderDetailsModelTearOff();

  _OrderDetailsModel call(
      {required int orderId,
      required String orderDate,
      required String orderTime,
      required String shopName,
      required String status,
      required bool cancelable,
      required bool trackable,
      required bool cancellationRequested,
      required double amount,
      required double totalCost,
      required double deliveryCharge,
      required String houseNo,
      required int pincode,
      required String locality,
      required String statusTime,
      String? remarks,
      required double couponDiscount,
      required String nickname,
      required String paymentMethod,
      required int franchiseId,
      @JsonKey(name: "redeemed_amount") required double redeemedAmount,
      @JsonKey(name: "cancellation_note") String? cancellationNote,
      @JsonKey(name: "total_amount") required double totalAmount,
      @JsonKey(name: "total_items") required int totalItems,
      required List<OrderDetailItemModel> items,
      required List<OrderDetailStatusTimeModel> statusTimeList,
      required int contactNumber,
      required bool cashbackEarned,
      required List<OrderDetailStepModel> steps}) {
    return _OrderDetailsModel(
      orderId: orderId,
      orderDate: orderDate,
      orderTime: orderTime,
      shopName: shopName,
      status: status,
      cancelable: cancelable,
      trackable: trackable,
      cancellationRequested: cancellationRequested,
      amount: amount,
      totalCost: totalCost,
      deliveryCharge: deliveryCharge,
      houseNo: houseNo,
      pincode: pincode,
      locality: locality,
      statusTime: statusTime,
      remarks: remarks,
      couponDiscount: couponDiscount,
      nickname: nickname,
      paymentMethod: paymentMethod,
      franchiseId: franchiseId,
      redeemedAmount: redeemedAmount,
      cancellationNote: cancellationNote,
      totalAmount: totalAmount,
      totalItems: totalItems,
      items: items,
      statusTimeList: statusTimeList,
      contactNumber: contactNumber,
      cashbackEarned: cashbackEarned,
      steps: steps,
    );
  }

  OrderDetailsModel fromJson(Map<String, Object> json) {
    return OrderDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $OrderDetailsModel = _$OrderDetailsModelTearOff();

/// @nodoc
mixin _$OrderDetailsModel {
  int get orderId => throw _privateConstructorUsedError;
  String get orderDate => throw _privateConstructorUsedError;
  String get orderTime => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get cancelable => throw _privateConstructorUsedError;
  bool get trackable => throw _privateConstructorUsedError;
  bool get cancellationRequested => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get totalCost => throw _privateConstructorUsedError;
  double get deliveryCharge => throw _privateConstructorUsedError;
  String get houseNo => throw _privateConstructorUsedError;
  int get pincode => throw _privateConstructorUsedError;
  String get locality => throw _privateConstructorUsedError;
  String get statusTime => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  double get couponDiscount => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  int get franchiseId => throw _privateConstructorUsedError;
  @JsonKey(name: "redeemed_amount")
  double get redeemedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "cancellation_note")
  String? get cancellationNote => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_items")
  int get totalItems => throw _privateConstructorUsedError;
  List<OrderDetailItemModel> get items => throw _privateConstructorUsedError;
  List<OrderDetailStatusTimeModel> get statusTimeList =>
      throw _privateConstructorUsedError;
  int get contactNumber => throw _privateConstructorUsedError;
  bool get cashbackEarned => throw _privateConstructorUsedError;
  List<OrderDetailStepModel> get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {int orderId,
      String orderDate,
      String orderTime,
      String shopName,
      String status,
      bool cancelable,
      bool trackable,
      bool cancellationRequested,
      double amount,
      double totalCost,
      double deliveryCharge,
      String houseNo,
      int pincode,
      String locality,
      String statusTime,
      String? remarks,
      double couponDiscount,
      String nickname,
      String paymentMethod,
      int franchiseId,
      @JsonKey(name: "redeemed_amount") double redeemedAmount,
      @JsonKey(name: "cancellation_note") String? cancellationNote,
      @JsonKey(name: "total_amount") double totalAmount,
      @JsonKey(name: "total_items") int totalItems,
      List<OrderDetailItemModel> items,
      List<OrderDetailStatusTimeModel> statusTimeList,
      int contactNumber,
      bool cashbackEarned,
      List<OrderDetailStepModel> steps});
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  final OrderDetailsModel _value;
  // ignore: unused_field
  final $Res Function(OrderDetailsModel) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? orderDate = freezed,
    Object? orderTime = freezed,
    Object? shopName = freezed,
    Object? status = freezed,
    Object? cancelable = freezed,
    Object? trackable = freezed,
    Object? cancellationRequested = freezed,
    Object? amount = freezed,
    Object? totalCost = freezed,
    Object? deliveryCharge = freezed,
    Object? houseNo = freezed,
    Object? pincode = freezed,
    Object? locality = freezed,
    Object? statusTime = freezed,
    Object? remarks = freezed,
    Object? couponDiscount = freezed,
    Object? nickname = freezed,
    Object? paymentMethod = freezed,
    Object? franchiseId = freezed,
    Object? redeemedAmount = freezed,
    Object? cancellationNote = freezed,
    Object? totalAmount = freezed,
    Object? totalItems = freezed,
    Object? items = freezed,
    Object? statusTimeList = freezed,
    Object? contactNumber = freezed,
    Object? cashbackEarned = freezed,
    Object? steps = freezed,
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
      cancelable: cancelable == freezed
          ? _value.cancelable
          : cancelable // ignore: cast_nullable_to_non_nullable
              as bool,
      trackable: trackable == freezed
          ? _value.trackable
          : trackable // ignore: cast_nullable_to_non_nullable
              as bool,
      cancellationRequested: cancellationRequested == freezed
          ? _value.cancellationRequested
          : cancellationRequested // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: totalCost == freezed
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCharge: deliveryCharge == freezed
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      houseNo: houseNo == freezed
          ? _value.houseNo
          : houseNo // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      statusTime: statusTime == freezed
          ? _value.statusTime
          : statusTime // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      couponDiscount: couponDiscount == freezed
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      franchiseId: franchiseId == freezed
          ? _value.franchiseId
          : franchiseId // ignore: cast_nullable_to_non_nullable
              as int,
      redeemedAmount: redeemedAmount == freezed
          ? _value.redeemedAmount
          : redeemedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      cancellationNote: cancellationNote == freezed
          ? _value.cancellationNote
          : cancellationNote // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalItems: totalItems == freezed
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailItemModel>,
      statusTimeList: statusTimeList == freezed
          ? _value.statusTimeList
          : statusTimeList // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailStatusTimeModel>,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackEarned: cashbackEarned == freezed
          ? _value.cashbackEarned
          : cashbackEarned // ignore: cast_nullable_to_non_nullable
              as bool,
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailStepModel>,
    ));
  }
}

/// @nodoc
abstract class _$OrderDetailsModelCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$OrderDetailsModelCopyWith(
          _OrderDetailsModel value, $Res Function(_OrderDetailsModel) then) =
      __$OrderDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int orderId,
      String orderDate,
      String orderTime,
      String shopName,
      String status,
      bool cancelable,
      bool trackable,
      bool cancellationRequested,
      double amount,
      double totalCost,
      double deliveryCharge,
      String houseNo,
      int pincode,
      String locality,
      String statusTime,
      String? remarks,
      double couponDiscount,
      String nickname,
      String paymentMethod,
      int franchiseId,
      @JsonKey(name: "redeemed_amount") double redeemedAmount,
      @JsonKey(name: "cancellation_note") String? cancellationNote,
      @JsonKey(name: "total_amount") double totalAmount,
      @JsonKey(name: "total_items") int totalItems,
      List<OrderDetailItemModel> items,
      List<OrderDetailStatusTimeModel> statusTimeList,
      int contactNumber,
      bool cashbackEarned,
      List<OrderDetailStepModel> steps});
}

/// @nodoc
class __$OrderDetailsModelCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res>
    implements _$OrderDetailsModelCopyWith<$Res> {
  __$OrderDetailsModelCopyWithImpl(
      _OrderDetailsModel _value, $Res Function(_OrderDetailsModel) _then)
      : super(_value, (v) => _then(v as _OrderDetailsModel));

  @override
  _OrderDetailsModel get _value => super._value as _OrderDetailsModel;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? orderDate = freezed,
    Object? orderTime = freezed,
    Object? shopName = freezed,
    Object? status = freezed,
    Object? cancelable = freezed,
    Object? trackable = freezed,
    Object? cancellationRequested = freezed,
    Object? amount = freezed,
    Object? totalCost = freezed,
    Object? deliveryCharge = freezed,
    Object? houseNo = freezed,
    Object? pincode = freezed,
    Object? locality = freezed,
    Object? statusTime = freezed,
    Object? remarks = freezed,
    Object? couponDiscount = freezed,
    Object? nickname = freezed,
    Object? paymentMethod = freezed,
    Object? franchiseId = freezed,
    Object? redeemedAmount = freezed,
    Object? cancellationNote = freezed,
    Object? totalAmount = freezed,
    Object? totalItems = freezed,
    Object? items = freezed,
    Object? statusTimeList = freezed,
    Object? contactNumber = freezed,
    Object? cashbackEarned = freezed,
    Object? steps = freezed,
  }) {
    return _then(_OrderDetailsModel(
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
      cancelable: cancelable == freezed
          ? _value.cancelable
          : cancelable // ignore: cast_nullable_to_non_nullable
              as bool,
      trackable: trackable == freezed
          ? _value.trackable
          : trackable // ignore: cast_nullable_to_non_nullable
              as bool,
      cancellationRequested: cancellationRequested == freezed
          ? _value.cancellationRequested
          : cancellationRequested // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: totalCost == freezed
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCharge: deliveryCharge == freezed
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      houseNo: houseNo == freezed
          ? _value.houseNo
          : houseNo // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      statusTime: statusTime == freezed
          ? _value.statusTime
          : statusTime // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      couponDiscount: couponDiscount == freezed
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      franchiseId: franchiseId == freezed
          ? _value.franchiseId
          : franchiseId // ignore: cast_nullable_to_non_nullable
              as int,
      redeemedAmount: redeemedAmount == freezed
          ? _value.redeemedAmount
          : redeemedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      cancellationNote: cancellationNote == freezed
          ? _value.cancellationNote
          : cancellationNote // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalItems: totalItems == freezed
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailItemModel>,
      statusTimeList: statusTimeList == freezed
          ? _value.statusTimeList
          : statusTimeList // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailStatusTimeModel>,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackEarned: cashbackEarned == freezed
          ? _value.cashbackEarned
          : cashbackEarned // ignore: cast_nullable_to_non_nullable
              as bool,
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailStepModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailsModel implements _OrderDetailsModel {
  const _$_OrderDetailsModel(
      {required this.orderId,
      required this.orderDate,
      required this.orderTime,
      required this.shopName,
      required this.status,
      required this.cancelable,
      required this.trackable,
      required this.cancellationRequested,
      required this.amount,
      required this.totalCost,
      required this.deliveryCharge,
      required this.houseNo,
      required this.pincode,
      required this.locality,
      required this.statusTime,
      this.remarks,
      required this.couponDiscount,
      required this.nickname,
      required this.paymentMethod,
      required this.franchiseId,
      @JsonKey(name: "redeemed_amount") required this.redeemedAmount,
      @JsonKey(name: "cancellation_note") this.cancellationNote,
      @JsonKey(name: "total_amount") required this.totalAmount,
      @JsonKey(name: "total_items") required this.totalItems,
      required this.items,
      required this.statusTimeList,
      required this.contactNumber,
      required this.cashbackEarned,
      required this.steps});

  factory _$_OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderDetailsModelFromJson(json);

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
  final bool cancelable;
  @override
  final bool trackable;
  @override
  final bool cancellationRequested;
  @override
  final double amount;
  @override
  final double totalCost;
  @override
  final double deliveryCharge;
  @override
  final String houseNo;
  @override
  final int pincode;
  @override
  final String locality;
  @override
  final String statusTime;
  @override
  final String? remarks;
  @override
  final double couponDiscount;
  @override
  final String nickname;
  @override
  final String paymentMethod;
  @override
  final int franchiseId;
  @override
  @JsonKey(name: "redeemed_amount")
  final double redeemedAmount;
  @override
  @JsonKey(name: "cancellation_note")
  final String? cancellationNote;
  @override
  @JsonKey(name: "total_amount")
  final double totalAmount;
  @override
  @JsonKey(name: "total_items")
  final int totalItems;
  @override
  final List<OrderDetailItemModel> items;
  @override
  final List<OrderDetailStatusTimeModel> statusTimeList;
  @override
  final int contactNumber;
  @override
  final bool cashbackEarned;
  @override
  final List<OrderDetailStepModel> steps;

  @override
  String toString() {
    return 'OrderDetailsModel(orderId: $orderId, orderDate: $orderDate, orderTime: $orderTime, shopName: $shopName, status: $status, cancelable: $cancelable, trackable: $trackable, cancellationRequested: $cancellationRequested, amount: $amount, totalCost: $totalCost, deliveryCharge: $deliveryCharge, houseNo: $houseNo, pincode: $pincode, locality: $locality, statusTime: $statusTime, remarks: $remarks, couponDiscount: $couponDiscount, nickname: $nickname, paymentMethod: $paymentMethod, franchiseId: $franchiseId, redeemedAmount: $redeemedAmount, cancellationNote: $cancellationNote, totalAmount: $totalAmount, totalItems: $totalItems, items: $items, statusTimeList: $statusTimeList, contactNumber: $contactNumber, cashbackEarned: $cashbackEarned, steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderDetailsModel &&
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
            (identical(other.cancelable, cancelable) ||
                const DeepCollectionEquality()
                    .equals(other.cancelable, cancelable)) &&
            (identical(other.trackable, trackable) ||
                const DeepCollectionEquality()
                    .equals(other.trackable, trackable)) &&
            (identical(other.cancellationRequested, cancellationRequested) ||
                const DeepCollectionEquality().equals(
                    other.cancellationRequested, cancellationRequested)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.totalCost, totalCost) ||
                const DeepCollectionEquality()
                    .equals(other.totalCost, totalCost)) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryCharge, deliveryCharge)) &&
            (identical(other.houseNo, houseNo) ||
                const DeepCollectionEquality()
                    .equals(other.houseNo, houseNo)) &&
            (identical(other.pincode, pincode) ||
                const DeepCollectionEquality()
                    .equals(other.pincode, pincode)) &&
            (identical(other.locality, locality) ||
                const DeepCollectionEquality()
                    .equals(other.locality, locality)) &&
            (identical(other.statusTime, statusTime) ||
                const DeepCollectionEquality()
                    .equals(other.statusTime, statusTime)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.couponDiscount, couponDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.couponDiscount, couponDiscount)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.franchiseId, franchiseId) ||
                const DeepCollectionEquality()
                    .equals(other.franchiseId, franchiseId)) &&
            (identical(other.redeemedAmount, redeemedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.redeemedAmount, redeemedAmount)) &&
            (identical(other.cancellationNote, cancellationNote) ||
                const DeepCollectionEquality()
                    .equals(other.cancellationNote, cancellationNote)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality().equals(other.totalAmount, totalAmount)) &&
            (identical(other.totalItems, totalItems) || const DeepCollectionEquality().equals(other.totalItems, totalItems)) &&
            (identical(other.items, items) || const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.statusTimeList, statusTimeList) || const DeepCollectionEquality().equals(other.statusTimeList, statusTimeList)) &&
            (identical(other.contactNumber, contactNumber) || const DeepCollectionEquality().equals(other.contactNumber, contactNumber)) &&
            (identical(other.cashbackEarned, cashbackEarned) || const DeepCollectionEquality().equals(other.cashbackEarned, cashbackEarned)) &&
            (identical(other.steps, steps) || const DeepCollectionEquality().equals(other.steps, steps)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(orderDate) ^
      const DeepCollectionEquality().hash(orderTime) ^
      const DeepCollectionEquality().hash(shopName) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(cancelable) ^
      const DeepCollectionEquality().hash(trackable) ^
      const DeepCollectionEquality().hash(cancellationRequested) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(totalCost) ^
      const DeepCollectionEquality().hash(deliveryCharge) ^
      const DeepCollectionEquality().hash(houseNo) ^
      const DeepCollectionEquality().hash(pincode) ^
      const DeepCollectionEquality().hash(locality) ^
      const DeepCollectionEquality().hash(statusTime) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(couponDiscount) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(franchiseId) ^
      const DeepCollectionEquality().hash(redeemedAmount) ^
      const DeepCollectionEquality().hash(cancellationNote) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(totalItems) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(statusTimeList) ^
      const DeepCollectionEquality().hash(contactNumber) ^
      const DeepCollectionEquality().hash(cashbackEarned) ^
      const DeepCollectionEquality().hash(steps);

  @JsonKey(ignore: true)
  @override
  _$OrderDetailsModelCopyWith<_OrderDetailsModel> get copyWith =>
      __$OrderDetailsModelCopyWithImpl<_OrderDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderDetailsModelToJson(this);
  }
}

abstract class _OrderDetailsModel implements OrderDetailsModel {
  const factory _OrderDetailsModel(
      {required int orderId,
      required String orderDate,
      required String orderTime,
      required String shopName,
      required String status,
      required bool cancelable,
      required bool trackable,
      required bool cancellationRequested,
      required double amount,
      required double totalCost,
      required double deliveryCharge,
      required String houseNo,
      required int pincode,
      required String locality,
      required String statusTime,
      String? remarks,
      required double couponDiscount,
      required String nickname,
      required String paymentMethod,
      required int franchiseId,
      @JsonKey(name: "redeemed_amount") required double redeemedAmount,
      @JsonKey(name: "cancellation_note") String? cancellationNote,
      @JsonKey(name: "total_amount") required double totalAmount,
      @JsonKey(name: "total_items") required int totalItems,
      required List<OrderDetailItemModel> items,
      required List<OrderDetailStatusTimeModel> statusTimeList,
      required int contactNumber,
      required bool cashbackEarned,
      required List<OrderDetailStepModel> steps}) = _$_OrderDetailsModel;

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailsModel.fromJson;

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
  bool get cancelable => throw _privateConstructorUsedError;
  @override
  bool get trackable => throw _privateConstructorUsedError;
  @override
  bool get cancellationRequested => throw _privateConstructorUsedError;
  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  double get totalCost => throw _privateConstructorUsedError;
  @override
  double get deliveryCharge => throw _privateConstructorUsedError;
  @override
  String get houseNo => throw _privateConstructorUsedError;
  @override
  int get pincode => throw _privateConstructorUsedError;
  @override
  String get locality => throw _privateConstructorUsedError;
  @override
  String get statusTime => throw _privateConstructorUsedError;
  @override
  String? get remarks => throw _privateConstructorUsedError;
  @override
  double get couponDiscount => throw _privateConstructorUsedError;
  @override
  String get nickname => throw _privateConstructorUsedError;
  @override
  String get paymentMethod => throw _privateConstructorUsedError;
  @override
  int get franchiseId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "redeemed_amount")
  double get redeemedAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "cancellation_note")
  String? get cancellationNote => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_amount")
  double get totalAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_items")
  int get totalItems => throw _privateConstructorUsedError;
  @override
  List<OrderDetailItemModel> get items => throw _privateConstructorUsedError;
  @override
  List<OrderDetailStatusTimeModel> get statusTimeList =>
      throw _privateConstructorUsedError;
  @override
  int get contactNumber => throw _privateConstructorUsedError;
  @override
  bool get cashbackEarned => throw _privateConstructorUsedError;
  @override
  List<OrderDetailStepModel> get steps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderDetailsModelCopyWith<_OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDetailItemModel _$OrderDetailItemModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailItemModel.fromJson(json);
}

/// @nodoc
class _$OrderDetailItemModelTearOff {
  const _$OrderDetailItemModelTearOff();

  _OrderDetailItemModel call(
      {required String itemName,
      required int itemQty,
      required double amount,
      required double total}) {
    return _OrderDetailItemModel(
      itemName: itemName,
      itemQty: itemQty,
      amount: amount,
      total: total,
    );
  }

  OrderDetailItemModel fromJson(Map<String, Object> json) {
    return OrderDetailItemModel.fromJson(json);
  }
}

/// @nodoc
const $OrderDetailItemModel = _$OrderDetailItemModelTearOff();

/// @nodoc
mixin _$OrderDetailItemModel {
  String get itemName => throw _privateConstructorUsedError;
  int get itemQty => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailItemModelCopyWith<OrderDetailItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailItemModelCopyWith<$Res> {
  factory $OrderDetailItemModelCopyWith(OrderDetailItemModel value,
          $Res Function(OrderDetailItemModel) then) =
      _$OrderDetailItemModelCopyWithImpl<$Res>;
  $Res call({String itemName, int itemQty, double amount, double total});
}

/// @nodoc
class _$OrderDetailItemModelCopyWithImpl<$Res>
    implements $OrderDetailItemModelCopyWith<$Res> {
  _$OrderDetailItemModelCopyWithImpl(this._value, this._then);

  final OrderDetailItemModel _value;
  // ignore: unused_field
  final $Res Function(OrderDetailItemModel) _then;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? itemQty = freezed,
    Object? amount = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemQty: itemQty == freezed
          ? _value.itemQty
          : itemQty // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$OrderDetailItemModelCopyWith<$Res>
    implements $OrderDetailItemModelCopyWith<$Res> {
  factory _$OrderDetailItemModelCopyWith(_OrderDetailItemModel value,
          $Res Function(_OrderDetailItemModel) then) =
      __$OrderDetailItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String itemName, int itemQty, double amount, double total});
}

/// @nodoc
class __$OrderDetailItemModelCopyWithImpl<$Res>
    extends _$OrderDetailItemModelCopyWithImpl<$Res>
    implements _$OrderDetailItemModelCopyWith<$Res> {
  __$OrderDetailItemModelCopyWithImpl(
      _OrderDetailItemModel _value, $Res Function(_OrderDetailItemModel) _then)
      : super(_value, (v) => _then(v as _OrderDetailItemModel));

  @override
  _OrderDetailItemModel get _value => super._value as _OrderDetailItemModel;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? itemQty = freezed,
    Object? amount = freezed,
    Object? total = freezed,
  }) {
    return _then(_OrderDetailItemModel(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemQty: itemQty == freezed
          ? _value.itemQty
          : itemQty // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailItemModel implements _OrderDetailItemModel {
  const _$_OrderDetailItemModel(
      {required this.itemName,
      required this.itemQty,
      required this.amount,
      required this.total});

  factory _$_OrderDetailItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderDetailItemModelFromJson(json);

  @override
  final String itemName;
  @override
  final int itemQty;
  @override
  final double amount;
  @override
  final double total;

  @override
  String toString() {
    return 'OrderDetailItemModel(itemName: $itemName, itemQty: $itemQty, amount: $amount, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderDetailItemModel &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.itemQty, itemQty) ||
                const DeepCollectionEquality()
                    .equals(other.itemQty, itemQty)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(itemQty) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$OrderDetailItemModelCopyWith<_OrderDetailItemModel> get copyWith =>
      __$OrderDetailItemModelCopyWithImpl<_OrderDetailItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderDetailItemModelToJson(this);
  }
}

abstract class _OrderDetailItemModel implements OrderDetailItemModel {
  const factory _OrderDetailItemModel(
      {required String itemName,
      required int itemQty,
      required double amount,
      required double total}) = _$_OrderDetailItemModel;

  factory _OrderDetailItemModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailItemModel.fromJson;

  @override
  String get itemName => throw _privateConstructorUsedError;
  @override
  int get itemQty => throw _privateConstructorUsedError;
  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  double get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderDetailItemModelCopyWith<_OrderDetailItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDetailStatusTimeModel _$OrderDetailStatusTimeModelFromJson(
    Map<String, dynamic> json) {
  return _OrderDetailStatusTimeModel.fromJson(json);
}

/// @nodoc
class _$OrderDetailStatusTimeModelTearOff {
  const _$OrderDetailStatusTimeModelTearOff();

  _OrderDetailStatusTimeModel call(
      {required String status, required String dateTime}) {
    return _OrderDetailStatusTimeModel(
      status: status,
      dateTime: dateTime,
    );
  }

  OrderDetailStatusTimeModel fromJson(Map<String, Object> json) {
    return OrderDetailStatusTimeModel.fromJson(json);
  }
}

/// @nodoc
const $OrderDetailStatusTimeModel = _$OrderDetailStatusTimeModelTearOff();

/// @nodoc
mixin _$OrderDetailStatusTimeModel {
  String get status => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailStatusTimeModelCopyWith<OrderDetailStatusTimeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailStatusTimeModelCopyWith<$Res> {
  factory $OrderDetailStatusTimeModelCopyWith(OrderDetailStatusTimeModel value,
          $Res Function(OrderDetailStatusTimeModel) then) =
      _$OrderDetailStatusTimeModelCopyWithImpl<$Res>;
  $Res call({String status, String dateTime});
}

/// @nodoc
class _$OrderDetailStatusTimeModelCopyWithImpl<$Res>
    implements $OrderDetailStatusTimeModelCopyWith<$Res> {
  _$OrderDetailStatusTimeModelCopyWithImpl(this._value, this._then);

  final OrderDetailStatusTimeModel _value;
  // ignore: unused_field
  final $Res Function(OrderDetailStatusTimeModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OrderDetailStatusTimeModelCopyWith<$Res>
    implements $OrderDetailStatusTimeModelCopyWith<$Res> {
  factory _$OrderDetailStatusTimeModelCopyWith(
          _OrderDetailStatusTimeModel value,
          $Res Function(_OrderDetailStatusTimeModel) then) =
      __$OrderDetailStatusTimeModelCopyWithImpl<$Res>;
  @override
  $Res call({String status, String dateTime});
}

/// @nodoc
class __$OrderDetailStatusTimeModelCopyWithImpl<$Res>
    extends _$OrderDetailStatusTimeModelCopyWithImpl<$Res>
    implements _$OrderDetailStatusTimeModelCopyWith<$Res> {
  __$OrderDetailStatusTimeModelCopyWithImpl(_OrderDetailStatusTimeModel _value,
      $Res Function(_OrderDetailStatusTimeModel) _then)
      : super(_value, (v) => _then(v as _OrderDetailStatusTimeModel));

  @override
  _OrderDetailStatusTimeModel get _value =>
      super._value as _OrderDetailStatusTimeModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_OrderDetailStatusTimeModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailStatusTimeModel implements _OrderDetailStatusTimeModel {
  const _$_OrderDetailStatusTimeModel(
      {required this.status, required this.dateTime});

  factory _$_OrderDetailStatusTimeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderDetailStatusTimeModelFromJson(json);

  @override
  final String status;
  @override
  final String dateTime;

  @override
  String toString() {
    return 'OrderDetailStatusTimeModel(status: $status, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderDetailStatusTimeModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$OrderDetailStatusTimeModelCopyWith<_OrderDetailStatusTimeModel>
      get copyWith => __$OrderDetailStatusTimeModelCopyWithImpl<
          _OrderDetailStatusTimeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderDetailStatusTimeModelToJson(this);
  }
}

abstract class _OrderDetailStatusTimeModel
    implements OrderDetailStatusTimeModel {
  const factory _OrderDetailStatusTimeModel(
      {required String status,
      required String dateTime}) = _$_OrderDetailStatusTimeModel;

  factory _OrderDetailStatusTimeModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailStatusTimeModel.fromJson;

  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderDetailStatusTimeModelCopyWith<_OrderDetailStatusTimeModel>
      get copyWith => throw _privateConstructorUsedError;
}
