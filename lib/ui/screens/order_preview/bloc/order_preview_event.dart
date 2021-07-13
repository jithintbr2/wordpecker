part of 'order_preview_bloc.dart';

@freezed
class OrderPreviewEvent with _$OrderPreviewEvent {
  const factory OrderPreviewEvent.getSupportingData(
      {required int franchiseId, required int addressId}) = _GetSupportingData;
}
