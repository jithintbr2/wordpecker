import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/referral/referral_model.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'referral_event.dart';
part 'referral_state.dart';
part 'referral_bloc.freezed.dart';

class ReferralBloc extends Bloc<ReferralEvent, ReferralState> {
  ApplicationRepository repository;
  ReferralBloc({required this.repository}) : super(_Loading());

  @override
  Stream<ReferralState> mapEventToState(
    ReferralEvent event,
  ) async* {
    if (event is _FetchReferralData) {
      yield _Loading();
      ApiResponse<ReferralModel> response =
          await repository.fetchReferralDetails();
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }
  }
}
