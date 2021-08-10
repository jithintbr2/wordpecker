part of 'coupon_written_bloc.dart';

@freezed
class CouponWrittenEvent with _$CouponWrittenEvent {
  const factory CouponWrittenEvent.checkCoupon({
    required List<ItemVarientModel> items,
    required String couponCode,
    required int shopId,
    required double deliveryCharge,
    required void Function(CouponModel, List) onSelect,
  }) = _CheckWritternCoupon;
}
