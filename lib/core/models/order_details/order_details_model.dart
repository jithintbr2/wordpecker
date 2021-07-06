import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/order_details_step/order_details_step_model.dart';

part 'order_details_model.freezed.dart';
part 'order_details_model.g.dart';

@freezed
class OrderDetailsModel with _$OrderDetailsModel {
  const factory OrderDetailsModel({
    required int orderId,
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
    required List<OrderDetailStepModel> steps,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);
}

@freezed
class OrderDetailItemModel with _$OrderDetailItemModel {
  const factory OrderDetailItemModel({
    required String itemName,
    required int itemQty,
    required double amount,
    required double total,
  }) = _OrderDetailItemModel;

  factory OrderDetailItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailItemModelFromJson(json);
}

@freezed
class OrderDetailStatusTimeModel with _$OrderDetailStatusTimeModel {
  const factory OrderDetailStatusTimeModel({
    required String status,
    required String dateTime,
  }) = _OrderDetailStatusTimeModel;

  factory OrderDetailStatusTimeModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailStatusTimeModelFromJson(json);
}
