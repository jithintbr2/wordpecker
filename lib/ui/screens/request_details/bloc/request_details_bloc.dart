import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/request_details/request_details_model.dart';
import 'package:woodle/core/models/request_item/request_item_model.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'request_details_event.dart';
part 'request_details_state.dart';
part 'request_details_bloc.freezed.dart';

class RequestDetailsBloc
    extends Bloc<RequestDetailsEvent, RequestDetailsState> {
  ApplicationRepository repository;
  BuildContext context;
  RequestDetailsBloc({required this.context, required this.repository})
      : super(_Busy());

  @override
  Stream<RequestDetailsState> mapEventToState(
    RequestDetailsEvent event,
  ) async* {
    if (event is _GetData) {
      yield _Busy();
      final response = await repository.getRequestDetails(event.requestId);
      response.when(
          success: (data) => emit(_Idle(data)),
          failure: (error) => emit(_Failed(error)));
    }
  }
}
