// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailsModel _$_$_OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _$_OrderDetailsModel(
    orderId: json['orderId'] as int,
    orderDate: json['orderDate'] as String,
    orderTime: json['orderTime'] as String,
    shopName: json['shopName'] as String,
    status: json['status'] as String,
    cancelable: json['cancelable'] as bool,
    trackable: json['trackable'] as bool,
    cancellationRequested: json['cancellationRequested'] as bool,
    amount: (json['amount'] as num).toDouble(),
    totalCost: (json['totalCost'] as num).toDouble(),
    deliveryCharge: (json['deliveryCharge'] as num).toDouble(),
    houseNo: json['houseNo'] as String,
    pincode: json['pincode'] as int,
    locality: json['locality'] as String,
    statusTime: json['statusTime'] as String,
    remarks: json['remarks'] as String?,
    couponDiscount: (json['couponDiscount'] as num).toDouble(),
    nickname: json['nickname'] as String,
    paymentMethod: json['paymentMethod'] as String,
    franchiseId: json['franchiseId'] as int,
    redeemedAmount: (json['redeemed_amount'] as num).toDouble(),
    cancellationNote: json['cancellation_note'] as String?,
    totalAmount: (json['total_amount'] as num).toDouble(),
    totalItems: json['total_items'] as int,
    items: (json['items'] as List<dynamic>)
        .map((e) => OrderDetailItemModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    statusTimeList: (json['statusTimeList'] as List<dynamic>)
        .map((e) =>
            OrderDetailStatusTimeModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    contactNumber: json['contactNumber'] as int,
    cashbackEarned: json['cashbackEarned'] as bool,
    steps: (json['steps'] as List<dynamic>)
        .map((e) => OrderDetailStepModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_OrderDetailsModelToJson(
        _$_OrderDetailsModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderDate': instance.orderDate,
      'orderTime': instance.orderTime,
      'shopName': instance.shopName,
      'status': instance.status,
      'cancelable': instance.cancelable,
      'trackable': instance.trackable,
      'cancellationRequested': instance.cancellationRequested,
      'amount': instance.amount,
      'totalCost': instance.totalCost,
      'deliveryCharge': instance.deliveryCharge,
      'houseNo': instance.houseNo,
      'pincode': instance.pincode,
      'locality': instance.locality,
      'statusTime': instance.statusTime,
      'remarks': instance.remarks,
      'couponDiscount': instance.couponDiscount,
      'nickname': instance.nickname,
      'paymentMethod': instance.paymentMethod,
      'franchiseId': instance.franchiseId,
      'redeemed_amount': instance.redeemedAmount,
      'cancellation_note': instance.cancellationNote,
      'total_amount': instance.totalAmount,
      'total_items': instance.totalItems,
      'items': instance.items,
      'statusTimeList': instance.statusTimeList,
      'contactNumber': instance.contactNumber,
      'cashbackEarned': instance.cashbackEarned,
      'steps': instance.steps,
    };

_$_OrderDetailItemModel _$_$_OrderDetailItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_OrderDetailItemModel(
    itemName: json['itemName'] as String,
    itemQty: json['itemQty'] as int,
    amount: (json['amount'] as num).toDouble(),
    total: (json['total'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_OrderDetailItemModelToJson(
        _$_OrderDetailItemModel instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'itemQty': instance.itemQty,
      'amount': instance.amount,
      'total': instance.total,
    };

_$_OrderDetailStatusTimeModel _$_$_OrderDetailStatusTimeModelFromJson(
    Map<String, dynamic> json) {
  return _$_OrderDetailStatusTimeModel(
    status: json['status'] as String,
    dateTime: json['dateTime'] as String,
  );
}

Map<String, dynamic> _$_$_OrderDetailStatusTimeModelToJson(
        _$_OrderDetailStatusTimeModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'dateTime': instance.dateTime,
    };
