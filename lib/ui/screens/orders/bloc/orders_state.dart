part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.loading() = _Loading;
  const factory OrdersState.loaded(List<OrdersModel> data) = _Loaded;
  const factory OrdersState.failed(NetworkExceptions exceptions) = _Failed;
}
