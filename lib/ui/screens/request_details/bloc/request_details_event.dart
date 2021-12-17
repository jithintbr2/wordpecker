part of 'request_details_bloc.dart';

@freezed
class RequestDetailsEvent with _$RequestDetailsEvent {
  const factory RequestDetailsEvent.getData(int requestId) = _GetData;
}
