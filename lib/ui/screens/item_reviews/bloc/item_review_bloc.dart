import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/shop_review/shop_review_model.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';

part 'item_review_event.dart';
part 'item_review_state.dart';
part 'item_review_bloc.freezed.dart';

class ItemReviewBloc extends Bloc<ItemReviewEvent, ItemReviewState> {
  ApplicationRepository repository;
  ItemReviewBloc({required this.repository}) : super(_Loading());

  @override
  Stream<ItemReviewState> mapEventToState(
    ItemReviewEvent event,
  ) async* {
    if (event is _FetchAll) {
      yield _Loading();
      final response = await repository.fetchItemReviews(event.itemId);
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }

    if (event is _Add) {
      yield _Loading();
      final addResponse = await repository.addItemReviews(
          event.rating, event.review, event.itemId);
      addResponse.when(
          success: (data) async {
            final response = await repository.fetchItemReviews(event.itemId);
            response.when(
                success: (data) => emit(_Loaded(data)),
                failure: (error) => emit(_Failed(error)));
          },
          failure: (error) => emit(_Failed(error)));
    }

    if (event is _Edit) {
      yield _Loading();
      final addResponse = await repository.editItemReviews(
          event.rating, event.review, event.reviewId);
      addResponse.when(
          success: (data) async {
            final response = await repository.fetchItemReviews(event.itemId);
            response.when(
                success: (data) => emit(_Loaded(data)),
                failure: (error) => emit(_Failed(error)));
          },
          failure: (error) => emit(_Failed(error)));
    }
  }
}
