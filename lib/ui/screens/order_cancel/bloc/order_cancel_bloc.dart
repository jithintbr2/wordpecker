import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/settings/config.dart';

part 'order_cancel_event.dart';
part 'order_cancel_state.dart';
part 'order_cancel_bloc.freezed.dart';

class OrderCancelBloc extends Bloc<OrderCancelEvent, OrderCancelState> {
  ApplicationRepository repository;
  BuildContext context;
  OrderCancelBloc({required this.repository, required this.context})
      : super(_Idle());

  @override
  Stream<OrderCancelState> mapEventToState(
    OrderCancelEvent event,
  ) async* {
    if (event is _CancelOrder) {
      yield _Busy();
      final response =
          await repository.cancelOrder(event.orderId, event.reason);
      response.when(success: (data) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text('Request Accepted'),
                  content: Text(data),
                  actions: [
                    ElevatedButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamedAndRemoveUntil(
                                Config.useDashboardEntry
                                    ? '/homeDashboard'
                                    : '/home',
                                (route) => false),
                        child: Text('Okay'))
                  ],
                ));
        emit(_Idle());
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
