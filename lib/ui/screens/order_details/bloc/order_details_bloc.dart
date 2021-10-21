import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/order_details/order_details_model.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'order_details_event.dart';
part 'order_details_state.dart';
part 'order_details_bloc.freezed.dart';

class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  ApplicationRepository repository;
  OrderDetailsBloc({required this.repository}) : super(_Loading());

  @override
  Stream<OrderDetailsState> mapEventToState(
    OrderDetailsEvent event,
  ) async* {
    if (event is _FetchDetails) {
      yield _Loading();
      final response =
          await repository.fetchOrderDetails(event.orderId, event.tempId);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }
  }
}
