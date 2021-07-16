part of 'service_request_bloc.dart';

@freezed
class ServiceRequestState with _$ServiceRequestState {
  const factory ServiceRequestState.loading() = _Loading;
}
