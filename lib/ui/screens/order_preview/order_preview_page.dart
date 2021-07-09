import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/models/order_preview/order_preview_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/ui/screens/order_preview/bloc/order_preview_bloc.dart';
import 'package:woodle/ui/screens/order_preview/bloc/place_order_button_bloc.dart';
import 'package:woodle/ui/screens/order_preview/widgets/delivery_options.dart';
import 'package:woodle/ui/screens/order_preview/widgets/instruction_box.dart';
import 'package:woodle/ui/screens/order_preview/widgets/payment_options.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

import 'widgets/cart_price.dart';

class OrderPreviewPage extends HookWidget {
  const OrderPreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartService service = CartService();
    final _remarkController = useTextEditingController();
    useEffect(() {
      context
          .read<OrderPreviewBloc>()
          .add(OrderPreviewEvent.getSupportingData());
    }, []);

    return Scaffold(
      appBar: AppBar(title: Text('Order Summary')),
      body: _buildBloc(service, _remarkController),
    );
  }

  _buildBloc(CartService service, TextEditingController remarkController) {
    return BlocBuilder<OrderPreviewBloc, OrderPreviewState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) =>
                _buildPage(context, service, data, remarkController),
            failed: (error) => FailedView(
                exceptions: error,
                onRetry: () {
                  context
                      .read<OrderPreviewBloc>()
                      .add(OrderPreviewEvent.getSupportingData());
                }));
      },
    );
  }

  _buildButtonBloc(List<ItemVarientModel> items, LocalStorage localStorage,
      String remark, CartService service) {
    AddressModel? _getAddress() {
      if (localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(localStorage.get('currentAddress') as String);
        return AddressModel.fromJson(currentAddressRaw);
      }
      return null;
    }

    AddressModel? _address = _getAddress();
    return BlocBuilder<PlaceOrderButtonBloc, PlaceOrderButtonState>(
        builder: (context, state) => state.when(
            buttonInitial: () => ElevatedButton(
                onPressed: () => context.read<PlaceOrderButtonBloc>().add(
                    PlaceOrderButtonEvent.placeOrder(
                        addressId: _address!.id,
                        items: items,
                        remark: remark,
                        service: service,
                        shopId: items[0].shopId)),
                child: Text('Place Order')),
            buttonLoading: () => ElevatedButton(
                onPressed: null, child: CircularProgressIndicator())));
  }

  Widget _buildPage(BuildContext context, CartService service,
      OrderPreviewModel data, TextEditingController remarkController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            CartPrice(service: service),
            DeliveryOptions(),
            PaymentOptions(),
            InstructionBox(controller: remarkController),
          ],
        )),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: _buildButtonBloc(service.initialValue(), LocalStorage(),
                remarkController.text, service)
            // ElevatedButton(
            //   child: Text('Place Order'),
            //   onPressed: () {
            //     List<ItemVarientModel> items = service.initialValue();
            //     LocalStorage _localStorage = LocalStorage();
            //     AddressModel? _getAddress() {
            //       if (_localStorage.get('currentAddress') != null) {
            //         Map<String, dynamic> currentAddressRaw =
            //             jsonDecode(_localStorage.get('currentAddress') as String);
            //         return AddressModel.fromJson(currentAddressRaw);
            //       }
            //       return null;
            //     }

            //     AddressModel? _address = _getAddress();
            //     context.read<OrderPreviewBloc>().add(
            //         OrderPreviewEvent.cartExpiryCheck(items, items[0].shopId,
            //             _address!.id, remarkController.text));
            //   },
            // ),
            ),
      ],
    );
  }
}
