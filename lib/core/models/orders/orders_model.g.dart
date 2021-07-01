// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrdersModel _$_$_OrdersModelFromJson(Map<String, dynamic> json) {
  return _$_OrdersModel(
    orderId: json['orderId'] as int,
    orderDate: json['orderDate'] as String,
    orderTime: json['orderTime'] as String,
    shopName: json['shopName'] as String,
    status: json['status'] as String,
    completed: json['completed'] as bool,
    trackable: json['trackable'] as bool,
    items: json['items'] as int,
  );
}

Map<String, dynamic> _$_$_OrdersModelToJson(_$_OrdersModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderDate': instance.orderDate,
      'orderTime': instance.orderTime,
      'shopName': instance.shopName,
      'status': instance.status,
      'completed': instance.completed,
      'trackable': instance.trackable,
      'items': instance.items,
    };
