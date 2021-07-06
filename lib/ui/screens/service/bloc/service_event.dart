part of 'service_bloc.dart';

@freezed
class ServiceEvent with _$ServiceEvent {
  const factory ServiceEvent.fetchServices(int franchiseId) = _FetchServices;
  const factory ServiceEvent.requestService() = _RequestService;
}
