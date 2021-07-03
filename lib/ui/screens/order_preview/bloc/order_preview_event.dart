part of 'order_preview_bloc.dart';

@freezed
class OrderPreviewEvent with _$OrderPreviewEvent {
  const factory OrderPreviewEvent.cartExpiryCheck() = _CartExpiryCheck;
  const factory OrderPreviewEvent.getSupportingData() = _GetSupportingData;
}
