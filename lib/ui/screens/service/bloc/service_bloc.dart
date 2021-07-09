import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/service/service_model.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'service_event.dart';
part 'service_state.dart';
part 'service_bloc.freezed.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  ApplicationRepository repository;
  ServiceBloc({required this.repository}) : super(_Loading());

  @override
  Stream<ServiceState> mapEventToState(
    ServiceEvent event,
  ) async* {
    if (event is _FetchServices) {
      yield _Loading();
      final response = await repository.fetchServices(event.franchiseId);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }
  }
}
