part of 'order_cancel_bloc.dart';

@freezed
class OrderCancelEvent with _$OrderCancelEvent {
  const factory OrderCancelEvent.cancelOrder(int orderId, String? reason) =
      _CancelOrder;
}
