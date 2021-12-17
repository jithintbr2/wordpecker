import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/request_item/request_item_model.dart';
import 'package:woodle/core/repository/repository.dart';

part 'request_item_history_event.dart';
part 'request_item_history_state.dart';
part 'request_item_history_bloc.freezed.dart';

class RequestItemHistoryBloc
    extends Bloc<RequestItemHistoryEvent, RequestItemHistoryState> {
  ApplicationRepository repository;
  BuildContext context;
  RequestItemHistoryBloc({required this.context, required this.repository})
      : super(_Busy());

  @override
  Stream<RequestItemHistoryState> mapEventToState(
    RequestItemHistoryEvent event,
  ) async* {
    if (event is _GetData) {
      yield _Busy();
      final response = await repository.getRequestedItems();
      response.when(
          success: (data) => emit(_Idle(data)),
          failure: (error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Something went wrong'),
              backgroundColor: Colors.red,
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(10),
            ));
            emit(_Idle([]));
          });
    }
  }
}
