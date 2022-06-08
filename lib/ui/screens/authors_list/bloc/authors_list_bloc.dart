import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/authors/authors_model.dart';
import 'package:woodle/core/models/custom_page/custom_page_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'authors_list_event.dart';
part 'authors_list_state.dart';
part 'authors_list_bloc.freezed.dart';

class AuthorsListBloc
    extends Bloc<AuthorsListEvent, AuthorsListState> {
  ApplicationRepository repository;
  BuildContext context;
  AuthorsListBloc({
    required this.repository,
    required this.context,
  }) : super(_Loading());

  @override
  Stream<AuthorsListState> mapEventToState(
    AuthorsListEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();
      // final response =
      //     await repository.fetchAuthorList(event.franchiseId);
      //  ApiResponse<AuthorsModel> response = (await repository
      //      .fetchAuthorList(event.franchiseId)) as ApiResponse<AuthorsModel>;
      ApiResponse<List<AuthorsModel>> response =
      await repository.fetchAuthorList(event.franchiseId);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }
  }
}
