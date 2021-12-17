part of 'request_item_history_bloc.dart';

@freezed
class RequestItemHistoryState with _$RequestItemHistoryState {
  const factory RequestItemHistoryState.busy() = _Busy;
  const factory RequestItemHistoryState.idle(List<RequestItemModel> data) =
      _Idle;
}
