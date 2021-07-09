part of 'order_cancel_bloc.dart';

@freezed
class OrderCancelState with _$OrderCancelState {
  const factory OrderCancelState.idle() = _Idle;
  const factory OrderCancelState.busy() = _Busy;
}
