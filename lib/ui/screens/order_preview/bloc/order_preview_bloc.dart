import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/models/order_preview/order_preview_model.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'order_preview_event.dart';
part 'order_preview_state.dart';
part 'order_preview_bloc.freezed.dart';

class OrderPreviewBloc extends Bloc<OrderPreviewEvent, OrderPreviewState> {
  ApplicationRepository repository;
  BuildContext context;
  OrderPreviewBloc({
    required this.repository,
    required this.context,
  }) : super(_Loading());

  @override
  Stream<OrderPreviewState> mapEventToState(
    OrderPreviewEvent event,
  ) async* {
    if (event is _GetSupportingData) {
      yield _Loading();
      final response = await repository.fetchOrderPreviewOptions(
          event.franchiseId, event.addressId, event.shopId);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }
  }
}
