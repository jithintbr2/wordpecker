part of 'request_details_bloc.dart';

@freezed
class RequestDetailsState with _$RequestDetailsState {
  const factory RequestDetailsState.busy() = _Busy;
  const factory RequestDetailsState.idle(RequestDetailsModel data) = _Idle;
  const factory RequestDetailsState.failed(NetworkExceptions exceptions) =
      _Failed;
}
