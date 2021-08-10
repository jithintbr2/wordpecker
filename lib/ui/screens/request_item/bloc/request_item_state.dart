part of 'request_item_bloc.dart';

@freezed
class RequestItemState with _$RequestItemState {
  const factory RequestItemState.busy() = _Busy;
  const factory RequestItemState.idle() = _Idle;
}
