part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.fetchData() = _FetchData;
  const factory NotificationEvent.readNotification() = _ReadNotification;
}
