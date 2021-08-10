import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/repository/repository.dart';

part 'service_request_event.dart';
part 'service_request_state.dart';
part 'service_request_bloc.freezed.dart';

class ServiceRequestBloc
    extends Bloc<ServiceRequestEvent, ServiceRequestState> {
  ApplicationRepository repository;
  BuildContext context;
  ServiceRequestBloc({required this.repository, required this.context})
      : super(_Idle());

  @override
  Stream<ServiceRequestState> mapEventToState(
    ServiceRequestEvent event,
  ) async* {
    if (event is _Started) {
      yield _Loading();
      final response = await repository.requestService(
        event.franchiseId,
        event.service,
        event.jobTitle,
        event.jobDescription,
        event.preferableDate,
        event.time,
      );
      response.when(success: (data) {
        if (data) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Service request has been registered'),
            backgroundColor: Colors.green,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          ));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Service request was not accepted'),
            backgroundColor: Colors.red,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          ));
          emit(_Idle());
        }
      }, failure: (error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Something went wrong'),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ));
        emit(_Idle());
      });
    }
  }
}
