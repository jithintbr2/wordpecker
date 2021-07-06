part of 'order_details_bloc.dart';

@freezed
class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState.loading() = _Loading;
  const factory OrderDetailsState.loaded(OrderDetailsModel data) = _Loaded;
  const factory OrderDetailsState.failed(NetworkExceptions exceptions) =
      _Failed;
}
