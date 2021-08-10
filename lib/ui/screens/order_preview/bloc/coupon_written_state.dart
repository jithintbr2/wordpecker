part of 'coupon_written_bloc.dart';

@freezed
class CouponWrittenState with _$CouponWrittenState {
  const factory CouponWrittenState.busy() = _Busy;
  const factory CouponWrittenState.idle() = _Idle;
}
