import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/custom_page/custom_page_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'shop_category_list_event.dart';
part 'shop_category_list_state.dart';
part 'shop_category_list_bloc.freezed.dart';

class ShopCategoryListBloc
    extends Bloc<ShopCategoryListEvent, ShopCategoryListState> {
  ApplicationRepository repository;
  BuildContext context;
  ShopCategoryListBloc({
    required this.repository,
    required this.context,
  }) : super(_Loading());

  @override
  Stream<ShopCategoryListState> mapEventToState(
    ShopCategoryListEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();
      // final response =
      //     await repository.fetchShopList(event.franchiseId, event.categoryId);
      ApiResponse<CustomPageModel> response = await repository
          .fetchCustomPageData(event.franchiseId, event.categoryId);
      response.when(
          success: (data) {
            if (data.shops!.length == 1) {
              Navigator.of(context).pushReplacementNamed('/shopDetail',
                  arguments: {"shopId": data.shops![0].shopId});
            } else
              emit(_Loaded(data));
          },
          failure: (error) => emit(_Failed(error)));
    }
  }
}
