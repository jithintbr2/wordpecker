import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/epub/epub_model.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';



part 'EPub_list_event.dart';
part 'EPub_list_state.dart';
part 'EPub_list_bloc.freezed.dart';

class EPubListBloc
    extends Bloc<EPubListEvent, EPubListState> {
  ApplicationRepository repository;
  BuildContext context;
  EPubListBloc({
    required this.repository,
    required this.context,
  }) : super(_Loading());

  @override
  Stream<EPubListState> mapEventToState(
    EPubListEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();
      // final response =
      //     await repository.fetchAuthorList(event.franchiseId);
      //  ApiResponse<AuthorsModel> response = (await repository
      //      .fetchAuthorList(event.franchiseId)) as ApiResponse<AuthorsModel>;
      ApiResponse<List<EPubModel>> response =
      await repository.fetchEPubList(event.franchiseId);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }
  }
}
