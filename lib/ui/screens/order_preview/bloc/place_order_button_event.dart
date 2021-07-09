part of 'place_order_button_bloc.dart';

@freezed
class PlaceOrderButtonEvent with _$PlaceOrderButtonEvent {
  const factory PlaceOrderButtonEvent.placeOrder({
    required CartService service,
    required List<ItemVarientModel> items,
    required int shopId,
    required int addressId,
    required String remark,
  }) = _PlaceOrder;
}