part of 'order_details_bloc.dart';

@freezed
class OrderDetailsEvent with _$OrderDetailsEvent {
  const factory OrderDetailsEvent.fetchDetails(int orderId, {int? tempId}) =
      _FetchDetails;
}
