import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/shop_review/shop_review_model.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'shop_review_event.dart';
part 'shop_review_state.dart';
part 'shop_review_bloc.freezed.dart';

class ShopReviewBloc extends Bloc<ShopReviewEvent, ShopReviewState> {
  ApplicationRepository repository;
  int shopId;
  ShopReviewBloc({required this.repository, required this.shopId})
      : super(_Loading());

  @override
  Stream<ShopReviewState> mapEventToState(
    ShopReviewEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();
      final response = await repository.fetchShopReviews(shopId);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }

    if (event is _AddReview) {
      yield _Loading();
      final addResponse =
          await repository.addShopReviews(event.rating, event.review, shopId);
      addResponse.when(
          success: (data) async {
            final response = await repository.fetchShopReviews(shopId);
            response.when(
                success: (data) => emit(_Loaded(data)),
                failure: (error) => emit(_Failed(error)));
          },
          failure: (error) => emit(_Failed(error)));
    }

    if (event is _EditReview) {
      yield _Loading();
      final addResponse = await repository.editShopReviews(
          event.rating, event.review, event.reviewId);
      addResponse.when(
          success: (data) async {
            final response = await repository.fetchShopReviews(shopId);
            response.when(
                success: (data) => emit(_Loaded(data)),
                failure: (error) => emit(_Failed(error)));
          },
          failure: (error) => emit(_Failed(error)));
    }
  }
}
