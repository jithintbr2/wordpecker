part of 'order_preview_bloc.dart';

@freezed
class OrderPreviewEvent with _$OrderPreviewEvent {
  const factory OrderPreviewEvent.cartExpiryCheck(List<ItemVarientModel> items,
      int shopId, int addressId, String remark) = _CartExpiryCheck;
  const factory OrderPreviewEvent.getSupportingData() = _GetSupportingData;
}
