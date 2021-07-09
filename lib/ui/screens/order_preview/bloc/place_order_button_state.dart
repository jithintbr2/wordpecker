part of 'place_order_button_bloc.dart';

@freezed
class PlaceOrderButtonState with _$PlaceOrderButtonState {
  const factory PlaceOrderButtonState.buttonInitial() = _ButtonInitial;
  const factory PlaceOrderButtonState.buttonLoading() = _ButtonLoading;
}
