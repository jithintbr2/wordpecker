import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/cubits/authentication/authentication_cubit.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ApplicationRepository repository;
  final AuthenticationCubit authenticationStatus;
  final BuildContext context;
  SplashBloc({
    required this.repository,
    required this.authenticationStatus,
    required this.context,
  }) : super(_Unknown());

  final LocalStorage _localStorage = LocalStorage();

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    if (event is _Verify) {
      try {
        final appVerificationResult = await repository.verifyApplication();
        if (!appVerificationResult.verified)
          yield _UnVerified();
        else {
          Object? token = _localStorage.get('token');
          if (token != null) {
            final userVerificationResult =
                await repository.verifyUser(token.toString());
            if (userVerificationResult != null) {
              repository.setToken(token.toString());
              authenticationStatus.changeState(
                  user: userVerificationResult,
                  updateAvailable: appVerificationResult.updateAvailable);
              Navigator.of(context).pushNamedAndRemoveUntil(
                  Config.useDashboardEntry ? '/homeDashboard' : '/home',
                  (route) => false);
            } else {
              authenticationStatus.changeState(
                  updateAvailable: appVerificationResult.updateAvailable);
              yield _Verified();
            }
          } else {
            authenticationStatus.changeState(
                updateAvailable: appVerificationResult.updateAvailable);
            yield _Verified();
          }
        }
      } catch (e) {}
    }
  }
}
