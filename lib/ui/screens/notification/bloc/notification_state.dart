part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.loading() = _Loading;
  const factory NotificationState.loaded(List<NotificationModel> data) =
      _Loaded;
  const factory NotificationState.failed(NetworkExceptions exceptions) =
      _Failed;
}
