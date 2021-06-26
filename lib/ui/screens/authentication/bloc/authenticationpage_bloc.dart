import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/repository/repository.dart';

part 'authenticationpage_event.dart';
part 'authenticationpage_state.dart';
part 'authenticationpage_bloc.freezed.dart';

class AuthenticationpageBloc
    extends Bloc<AuthenticationpageEvent, AuthenticationpageState> {
  final ApplicationRepository repository;
  final AuthenticationCubit authenticationStatus;
  final BuildContext context;

  AuthenticationpageBloc({
    required this.authenticationStatus,
    required this.context,
    required this.repository,
  }) : super(_Initial(isLoading: false));

  @override
  Stream<AuthenticationpageState> mapEventToState(
    AuthenticationpageEvent event,
  ) async* {
    if (event is _VerifyPhone) {
      yield _Initial(isLoading: true);

      try {
        final isVerified = await repository.verifyPhone(event.phone);
        if (isVerified)
          yield _LoginState(isLoading: false);
        else
          yield _OTPState();
      } catch (e) {}
    }

    if (event is _GenerateOTP)
      repository.sendOTP(event.phone, event.signature, event.otp);

    if (event is _YieldRegisterState) yield _RegisterState(isLoading: false);

    if (event is _Login) {
      yield _LoginState(isLoading: true);
      final firebaseId = await FirebaseMessaging.instance.getToken();
      final user = await repository.login(
          number: event.phone,
          password: event.password,
          firebaseId: firebaseId);
      if (user != null) {
        authenticationStatus.changeState(user: user);
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      } else
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Wrong Credentials'),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ));
    }

    if (event is _Register) {
      yield _RegisterState(isLoading: true);
      final firebaseId = await FirebaseMessaging.instance.getToken();
      final user = await repository.register(
          number: event.phone,
          password: event.password,
          name: event.name,
          firebaseId: firebaseId,
          referalId: event.referalId,
          referredLink: event.referredLink);
      if (user != null) {
        authenticationStatus.changeState(user: user);
      } else
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Something Went Wrong. Try to Login.'),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ));
    }
  }
}
