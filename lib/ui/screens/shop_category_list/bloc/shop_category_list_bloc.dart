import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/repository/repository.dart';

part 'shop_category_list_event.dart';
part 'shop_category_list_state.dart';
part 'shop_category_list_bloc.freezed.dart';

class ShopCategoryListBloc
    extends Bloc<ShopCategoryListEvent, ShopCategoryListState> {
  ApplicationRepository repository;
  ShopCategoryListBloc({required this.repository}) : super(_Loading());

  @override
  Stream<ShopCategoryListState> mapEventToState(
    ShopCategoryListEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();
      try {
        final response = await repository.fetchShopList(2);
        yield _Loaded(response);
      } catch (e) {}
    }
  }
}
