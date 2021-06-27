import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/home_page/home_page_model.dart';
import 'package:woodle/core/repository/repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  ApplicationRepository repository;
  HomeBloc({required this.repository}) : super(_Loading());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();
      try {
        final response = await repository.fetchHomePageData();
        print(response.categories);
        print(response.message);
        yield _Loaded(response);
      } catch (e) {
        print('object');
        print(e);
      }
    }
  }
}
