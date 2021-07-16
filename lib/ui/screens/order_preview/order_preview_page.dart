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

    LocalStorage _localStorage = LocalStorage();
    AddressModel? _getAddress() {
      if (_localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(_localStorage.get('currentAddress') as String);
        return AddressModel.fromJson(currentAddressRaw);
      }
      return null;
    }

    // Copied from Delvento. Horrible logic donot use this.
    String _getNowDateTime() {
      String nowDate = DateTime.now().toString();
      nowDate = nowDate.substring(0, nowDate.indexOf(" "));
      String nowTime = TimeOfDay.now().format(context);
      if (nowDate.isEmpty) return "$nowDate $nowTime";
      final split = nowDate.split('-');
      print(split);
      return "${split[2]}-${split[1]}-${split[0]} $nowTime";
    }

    final _address = useState(_getAddress());
    final _isScheduledOrder = useState(false);
    final _deliveryDate = useState(_getNowDateTime());

    useEffect(() {
      context.read<OrderPreviewBloc>().add(OrderPreviewEvent.getSupportingData(
          addressId: _address.value!.id,
          franchiseId: _address.value!.franchiseId));
    }, [_address.value]);

    return Scaffold(
      appBar: AppBar(title: Text('Order Summary')),
      body: _buildBloc(service, _remarkController, _address, _isScheduledOrder,
          _deliveryDate),
    );
  }

  _buildBloc(
    CartService service,
    TextEditingController remarkController,
    ValueNotifier<AddressModel?> address,
    ValueNotifier<bool> isScheduledOrder,
    ValueNotifier<String> deliveryDate,
  ) {
    return BlocBuilder<OrderPreviewBloc, OrderPreviewState>(
      builder: (context, state) {
        return state.when(
            loading: () => LoadingView(),
            loaded: (data) =>
                BlocBuilder<PlaceOrderButtonBloc, PlaceOrderButtonState>(
                    builder: (context, state) => state.when(
                        buttonInitial: () => _buildPage(
                            context,
                            service,
                            data,
                            remarkController,
                            address,
                            isScheduledOrder,
                            deliveryDate),
                        buttonLoading: () =>
                            Center(child: CircularProgressIndicator()))),
            failed: (error) => FailedView(
                exceptions: error,
                onRetry: () {
                  context.read<OrderPreviewBloc>().add(
                      OrderPreviewEvent.getSupportingData(
                          addressId: address.value!.id,
                          franchiseId: address.value!.franchiseId));
                }));
      },
    );
  }

  _buildButtonBloc(
    List<ItemVarientModel> items,
    LocalStorage localStorage,
    TextEditingController remark,
    CartService service,
    String dateTime,
    bool isAdvancedOrder,
  ) {
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
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text("You are about to place the order"),
                      content: Text(
                          "Are you sure that you want to continue to place the order?"),
                      actions: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              context
                                  .read<PlaceOrderButtonBloc>()
                                  .add(PlaceOrderButtonEvent.placeOrder(
                                    addressId: _address!.id,
                                    items: items,
                                    remark: remark.text,
                                    service: service,
                                    shopId: items[0].shopId,
                                    dateTime: dateTime,
                                    isAdvancedOrder: isAdvancedOrder,
                                  ));
                            },
                            child: Text('Yes')),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Theme.of(context).errorColor),
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('No'))
                      ],
                    ),
                  );
                },
                child: Text('Place Order')),
            buttonLoading: () => ElevatedButton(
                onPressed: null, child: CircularProgressIndicator())));
  }

  Widget _buildPage(
    BuildContext context,
    CartService service,
    OrderPreviewModel data,
    TextEditingController remarkController,
    ValueNotifier<AddressModel?> address,
    ValueNotifier<bool> isScheduledOrder,
    ValueNotifier<String> deliveryDateTime,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: RefreshIndicator(
                child: ListView(
                  padding: EdgeInsets.all(10),
                  children: [
                    CartPrice(
                        service: service, deliveryCharge: data.deliveryCharge),
                    // Card(
                    //   child: Padding(
                    //       padding: EdgeInsets.all(10),
                    //       child: StreamBuilder(
                    //           stream: service.controller,
                    //           initialData: service.initialValue(),
                    //           builder: (context,
                    //               AsyncSnapshot<List<ItemVarientModel>> snap) {
                    //             double totalPrice = 0;
                    //             snap.data!
                    //                 .forEach((item) => totalPrice += item.salePrice!);
                    //             return Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Text("Bill",
                    //                     style: TextStyle(fontWeight: FontWeight.bold)),
                    //                 SizedBox(height: 10),
                    //                 PriceIndicator(
                    //                     price: totalPrice, title: 'Order Total'),
                    //                 PriceIndicator(
                    //                     price: data.deliveryCharge,
                    //                     title: 'Delivery Charges'),
                    //                 Divider(),
                    //                 PriceIndicator(
                    //                     price: data.deliveryCharge + totalPrice,
                    //                     title: 'Grand Total')
                    //               ],
                    //             );
                    //           })),
                    // ),
                    DeliveryOptions(
                      address: address,
                      isScheduledOrder: isScheduledOrder,
                      deliveryDate: deliveryDateTime,
                    ),
                    PaymentOptions(),
                    InstructionBox(controller: remarkController),
                  ],
                ),
                onRefresh: () async {
                  context.read<OrderPreviewBloc>().add(
                      OrderPreviewEvent.getSupportingData(
                          addressId: address.value!.id,
                          franchiseId: address.value!.franchiseId));
                  return null;
                })),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: _buildButtonBloc(
              service.initialValue(),
              LocalStorage(),
              remarkController,
              service,
              deliveryDateTime.value,
              isScheduledOrder.value,
            )
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
