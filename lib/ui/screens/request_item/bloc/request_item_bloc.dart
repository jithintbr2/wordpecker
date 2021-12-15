import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uploader/flutter_uploader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/settings/config.dart';

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
        if (event.images != null) {
          event.images!.forEach((image) {
            event.uploader.enqueue(repository.uploadFile(
                [image].whereType<String>().toList(), data));
          });
        } else {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: Text("Request Submitted"),
              content: Text(
                  "Your request has been submitted. Our representative will call you shortly after request evaluation."),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context,
                        Config.useDashboardEntry ? '/homeDashboard' : '/home',
                        (route) => false);
                  },
                  child: Text("okay"),
                ),
              ],
            ),
          );
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
