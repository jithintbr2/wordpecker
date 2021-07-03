import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'shop_event.dart';
part 'shop_state.dart';
part 'shop_bloc.freezed.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ApplicationRepository repository;
  ShopBloc({required this.repository}) : super(_Loading());

  @override
  Stream<ShopState> mapEventToState(
    ShopEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();
      final response = await repository.fetchShopDetails(event.shopId);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }
  }
}
