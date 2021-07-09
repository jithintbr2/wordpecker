import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/repository/repository.dart';

part 'referal_check_event.dart';
part 'referal_check_state.dart';
part 'referal_check_bloc.freezed.dart';

class ReferalCheckBloc extends Bloc<ReferalCheckEvent, ReferalCheckState> {
  final ApplicationRepository repository;
  ReferalCheckBloc({required this.repository}) : super(_Initial());

  @override
  Stream<ReferalCheckState> mapEventToState(
    ReferalCheckEvent event,
  ) async* {
    if (event is _CheckValidity) {
      ApiResponse<bool> response =
          await repository.checkReferralValidity(event.referalCode);
      response.when(
          success: (data) {
            if (data)
              emit(_Loaded());
            else
              emit(_Failed());
          },
          failure: (error) => emit(_Failed()));
    }

    if (event is _Reset) yield _Initial();
  }
}
