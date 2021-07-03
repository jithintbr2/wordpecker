import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/home_search/home_search_model.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'home_search_event.dart';
part 'home_search_state.dart';
part 'home_search_bloc.freezed.dart';

class HomeSearchBloc extends Bloc<HomeSearchEvent, HomeSearchState> {
  ApplicationRepository repository;
  HomeSearchBloc({required this.repository})
      : super(_Loaded(HomeSearchModel(items: [], shops: [])));

  @override
  Stream<HomeSearchState> mapEventToState(
    HomeSearchEvent event,
  ) async* {
    if (event is _Search) {
      yield _Loading();
      ApiResponse<HomeSearchModel> response =
          await repository.searchItems(event.searchQuery);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }

    if (event is _Reset) {
      yield _Loaded(HomeSearchModel(items: [], shops: []));
    }
  }
}
