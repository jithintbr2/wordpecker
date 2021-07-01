import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'category_items_event.dart';
part 'category_items_state.dart';
part 'category_items_bloc.freezed.dart';

class CategoryItemsBloc extends Bloc<CategoryItemsEvent, CategoryItemsState> {
  ApplicationRepository repository;
  CategoryItemsBloc({required this.repository}) : super(_Loading());

  @override
  Stream<CategoryItemsState> mapEventToState(
    CategoryItemsEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();
      final response =
          await repository.fetchCategoryItemsData(event.categoryId);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }
  }
}
