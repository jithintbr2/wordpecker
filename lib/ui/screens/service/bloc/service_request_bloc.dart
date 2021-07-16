import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_request_event.dart';
part 'service_request_state.dart';
part 'service_request_bloc.freezed.dart';

class ServiceRequestBloc
    extends Bloc<ServiceRequestEvent, ServiceRequestState> {
  ServiceRequestBloc() : super(_Loading());

  @override
  Stream<ServiceRequestState> mapEventToState(
    ServiceRequestEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
