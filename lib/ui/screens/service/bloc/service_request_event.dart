part of 'service_request_bloc.dart';

@freezed
class ServiceRequestEvent with _$ServiceRequestEvent {
  const factory ServiceRequestEvent.started(
    int franchiseId,
    int service,
    String jobTitle,
    String jobDescription,
    String preferableDate,
    String time,
  ) = _Started;
}
