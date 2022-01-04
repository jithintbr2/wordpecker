import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/order_preview/payment_online.dart';

part 'place_order_button_event.dart';
part 'place_order_button_state.dart';
part 'place_order_button_bloc.freezed.dart';

class PlaceOrderButtonBloc
    extends Bloc<PlaceOrderButtonEvent, PlaceOrderButtonState> {
  BuildContext context;
  ApplicationRepository repository;
  PlaceOrderButtonBloc({required this.context, required this.repository})
      : super(_ButtonInitial());

  @override
  Stream<PlaceOrderButtonState> mapEventToState(
    PlaceOrderButtonEvent event,
  ) async* {
    if (event is _PlaceOrder) {
      yield _ButtonLoading();

      final List items = [];
      final List<int> itemIds = [];
      final List sentableData = [];
      event.service.initialValue().forEach((item) {
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

      final cartCheckValidityResponse =
          await repository.checkCartValidity(itemIds);

      cartCheckValidityResponse.when(success: (data) async {
        if (data.isEmpty) {
          final placeOrderResponse = await repository.placeOrder(
            sentableData,
            event.shopId,
            event.addressId,
            event.remark,
            event.isAdvancedOrder,
            event.dateTime,
            event.couponId,
            event.redeemedAmount,
            event.couponDiscount,
            event.couponType,
            event.selectedPaymentMode,
          );
          placeOrderResponse.when(success: (orderId) {
            if (event.selectedPaymentMode == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PaymentWebPage(tempId: orderId)));
            } else {
              LocalStorage localStorage = LocalStorage();
              localStorage.remove('cart');
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/orderDetails', (route) => false,
                  arguments: {'orderId': 0, 'tempId': orderId});
            }

            // Navigator.of(context).pushNamedAndRemoveUntil(
            //     Config.useDashboardEntry ? '/homeDashboard' : '/home',
            //     (route) => false);
          }, failure: (error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Network Issue. Please check your internet.'),
              backgroundColor: Colors.red,
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(10),
            ));
            emit(_ButtonInitial());
          });
        } else {
          event.service.removeItemsbyId(data);
          emit(_ButtonInitial());
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: Text("Unavailable Items"),
              content: Text(
                  "Some of the items are not available and has been removed from your cart."),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Text("okay"),
                ),
              ],
            ),
          );
        }
      }, failure: (error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Network Issue. Please check your internet.'),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ));
        emit(_ButtonInitial());
      });
    }
  }
}
