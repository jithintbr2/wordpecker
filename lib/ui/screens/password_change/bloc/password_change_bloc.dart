import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/repository/repository.dart';

part 'password_change_event.dart';
part 'password_change_state.dart';
part 'password_change_bloc.freezed.dart';

class PasswordChangeBloc
    extends Bloc<PasswordChangeEvent, PasswordChangeState> {
  ApplicationRepository repository;
  BuildContext context;
  PasswordChangeBloc({required this.repository, required this.context})
      : super(_Idle());

  @override
  Stream<PasswordChangeState> mapEventToState(
    PasswordChangeEvent event,
  ) async* {
    if (event is _ChangePassword) {
      yield _Busy();
      final response = await repository.changePassword(event.password);
      response.when(success: (data) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Password Has Been Changed'),
          backgroundColor: Colors.green,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ));
        emit(_Idle());
      }, failure: (error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Something Went Wrong'),
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
