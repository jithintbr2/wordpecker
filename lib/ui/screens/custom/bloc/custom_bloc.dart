import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/custom_page/custom_page_model.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/storage.dart';

part 'custom_event.dart';
part 'custom_state.dart';
part 'custom_bloc.freezed.dart';

class CustomBloc extends Bloc<CustomEvent, CustomState> {
  ApplicationRepository repository;
  CustomBloc({required this.repository}) : super(_Loading());

  @override
  Stream<CustomState> mapEventToState(
    CustomEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();
      ApiResponse<CustomPageModel> response =
          await repository.fetchCustomPageData(event.franchiseId, null);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }
  }
}
