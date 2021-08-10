import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/coupon/coupon_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/repository/repository.dart';

part 'coupon_written_event.dart';
part 'coupon_written_state.dart';
part 'coupon_written_bloc.freezed.dart';

class CouponWrittenBloc extends Bloc<CouponWrittenEvent, CouponWrittenState> {
  ApplicationRepository repository;
  BuildContext context;
  CouponWrittenBloc({
    required this.context,
    required this.repository,
  }) : super(_Idle());

  @override
  Stream<CouponWrittenState> mapEventToState(
    CouponWrittenEvent event,
  ) async* {
    if (event is _CheckWritternCoupon) {
      yield _Busy();

      final List items = [];
      final List<int> itemIds = [];
      final List sentableData = [];
      event.items.forEach((item) {
        itemIds.add(item.varientId);
        items.add(item.toJson());
      });

      itemIds.forEach((id) {
        bool flag = false;
        sentableData.forEach((itemData) {
          if (itemData['varientId'] == id) {
            itemData["qty"] = itemData["qty"] + 1;
            flag = true;
          }
        });

        if (!flag) sentableData.add({'varientId': id, 'qty': 1});
      });

      print(sentableData);
      final response = await repository.checkCoupon(
          sentableData, event.couponCode, event.shopId, event.deliveryCharge);
      response.when(success: (data) {
        if (data.coupon != null)
          event.onSelect(data.coupon!, data.applicableOn!);
        else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(data.message),
            backgroundColor: Colors.red,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          ));
          emit(_Idle());
        }
      }, failure: (error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Something went wrong"),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ));
        emit(_Idle());
      });
    }
  }
}
