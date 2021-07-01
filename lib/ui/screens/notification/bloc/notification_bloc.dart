import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/notification/notification_model.dart';
import 'package:woodle/core/repository/repository.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  ApplicationRepository repository;
  NotificationBloc({required this.repository}) : super(_Loading());

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();

      try {
        final response = await repository.fetchNotifications();
        yield _Loaded(response);
      } catch (e) {}
    }
  }
}
