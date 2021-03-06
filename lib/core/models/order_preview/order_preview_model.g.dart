// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_preview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderPreviewModel _$_$_OrderPreviewModelFromJson(Map<String, dynamic> json) {
  return _$_OrderPreviewModel(
    walletAmount: (json['walletAmount'] as num).toDouble(),
    addonsList: (json['addonsList'] as List<dynamic>)
        .map((e) => ItemVarientModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    paymentMethods: PaymentOptionsModel.fromJson(
        json['paymentMethods'] as Map<String, dynamic>),
    deliveryCharge: (json['deliveryCharge'] as num).toDouble(),
    coupenList: (json['coupenList'] as List<dynamic>)
        .map((e) => CouponModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_OrderPreviewModelToJson(
        _$_OrderPreviewModel instance) =>
    <String, dynamic>{
      'walletAmount': instance.walletAmount,
      'addonsList': instance.addonsList,
      'paymentMethods': instance.paymentMethods,
      'deliveryCharge': instance.deliveryCharge,
      'coupenList': instance.coupenList,
    };

_$_PaymentOptionsModel _$_$_PaymentOptionsModelFromJson(
    Map<String, dynamic> json) {
  return _$_PaymentOptionsModel(
    onlinePayment: json['onlinePayment'] as bool,
    selfPickup: json['selfPickup'] as bool,
    cod: json['cod'] as bool,
  );
}

Map<String, dynamic> _$_$_PaymentOptionsModelToJson(
        _$_PaymentOptionsModel instance) =>
    <String, dynamic>{
      'onlinePayment': instance.onlinePayment,
      'selfPickup': instance.selfPickup,
      'cod': instance.cod,
    };
