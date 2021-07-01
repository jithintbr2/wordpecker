import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/orders/orders_model.dart';
import 'package:woodle/core/repository/repository.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  ApplicationRepository repository;
  OrdersBloc({required this.repository}) : super(_Loading());

  @override
  Stream<OrdersState> mapEventToState(
    OrdersEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();

      try {
        final response = await repository.fetchOrderHistroy();
        yield _Loaded(response);
      } catch (e) {}
    }
  }
}
