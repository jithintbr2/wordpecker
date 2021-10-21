import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uploader/flutter_uploader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/repository/repository.dart';

part 'request_item_event.dart';
part 'request_item_state.dart';
part 'request_item_bloc.freezed.dart';

class RequestItemBloc extends Bloc<RequestItemEvent, RequestItemState> {
  ApplicationRepository repository;
  BuildContext context;
  RequestItemBloc({required this.context, required this.repository})
      : super(_Idle());

  @override
  Stream<RequestItemState> mapEventToState(
    RequestItemEvent event,
  ) async* {
    if (event is _Request) {
      yield _Busy();
      final response = await repository.requestItems(
          event.items, event.franchiseId, event.remark);
      response.when(success: (data) {
        event.images.forEach((image) {
          event.uploader.enqueue(repository.uploadFile(
              [image].whereType<String>().toList(), data));
        });
        // if (data) {
        //   Navigator.of(context).pop();
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Text('Your request has been registered'),
        //     backgroundColor: Colors.green,
        //     elevation: 10,
        //     behavior: SnackBarBehavior.floating,
        //     margin: EdgeInsets.all(10),
        //   ));
        // } else {
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Text('Your request was not accepted'),
        //     backgroundColor: Colors.red,
        //     elevation: 10,
        //     behavior: SnackBarBehavior.floating,
        //     margin: EdgeInsets.all(10),
        //   ));
        //   emit(_Idle());
        // }
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
