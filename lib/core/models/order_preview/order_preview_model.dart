import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/coupon/coupon_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';

part 'order_preview_model.freezed.dart';
part 'order_preview_model.g.dart';

@freezed
class OrderPreviewModel with _$OrderPreviewModel {
  const factory OrderPreviewModel({
    required double walletAmount,
    required List<ItemVarientModel> addonsList,
    required PaymentOptionsModel paymentMethods,
    required double deliveryCharge,
    required List<CouponModel> coupenList,
  }) = _OrderPreviewModel;

  factory OrderPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$OrderPreviewModelFromJson(json);
}

@freezed
class PaymentOptionsModel with _$PaymentOptionsModel {
  const factory PaymentOptionsModel({
    required bool onlinePayment,
    required bool selfPickup,
    required bool cod,
  }) = _PaymentOptionsModel;

  factory PaymentOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentOptionsModelFromJson(json);
}
