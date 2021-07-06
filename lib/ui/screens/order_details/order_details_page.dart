import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/order_details/order_details_model.dart';
import 'package:woodle/ui/screens/order_details/bloc/order_details_bloc.dart';
import 'package:woodle/ui/screens/order_details/widgets/order_cancele_option.dart';
import 'package:woodle/ui/screens/order_details/widgets/order_delivery_address.dart';
import 'package:woodle/ui/screens/order_details/widgets/order_details_cashback.dart';
import 'package:woodle/ui/screens/order_details/widgets/order_steps.dart';
import 'package:woodle/ui/screens/order_details/widgets/order_table.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

class OrderDetailsPage extends HookWidget {
  final int? orderId;
  final int? tempId;
  const OrderDetailsPage({Key? key, this.orderId, this.tempId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _showCashback = useState(false);
    useEffect(() {
      context
          .read<OrderDetailsBloc>()
          .add(OrderDetailsEvent.fetchDetails(tempId ?? orderId!));
    }, []);
    return Scaffold(
      appBar: AppBar(title: Text('Order Details')),
      body: _buildBloc(_showCashback),
    );
  }

  Widget _buildBloc(ValueNotifier<bool> showCashback) {
    return BlocBuilder<OrderDetailsBloc, OrderDetailsState>(
        builder: (context, state) => state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(context, data, showCashback),
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () => context
                    .read<OrderDetailsBloc>()
                    .add(OrderDetailsEvent.fetchDetails(tempId ?? orderId!)))));
  }

  Widget _buildPage(BuildContext context, OrderDetailsModel data,
      ValueNotifier<bool> showCashback) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: ListView(
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              children: [
                OrderSteps(data: data.steps),
                SizedBox(height: 16),
                OrderTable(data: data),
                SizedBox(height: 8),
                (data.couponDiscount > 0)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "₹ ${data.couponDiscount} coupon applied.",
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          )
                        ],
                      )
                    : SizedBox(),
                (data.redeemedAmount > 0)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "₹ ${data.redeemedAmount} redeemed.",
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          )
                        ],
                      )
                    : SizedBox(),
                data.status.toLowerCase() == "cancelled"
                    ? SizedBox()
                    : Container(
                        margin: EdgeInsets.only(
                            left: 16, right: 16, top: 16, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.green, width: 2)),
                        padding: EdgeInsets.all(8),
                        child: Text(
                          data.paymentMethod,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                Divider(),
                data.remarks != null || data.remarks!.trim().isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Delivery Notes",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        fontSize: 20,
                                        color: Colors.blueGrey[600]),
                              ),
                            ],
                          ),
                          SizedBox(width: 8),
                          Text(data.remarks!)
                        ],
                      )
                    : SizedBox(),
                SizedBox(height: 16),
                OrderCancelOption(data: data),
                SizedBox(height: 16),
                OrderDeliveryAddress(data: data)
              ],
            )),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.call),
                    SizedBox(width: 10),
                    Text(
                      'Call',
                      style: TextStyle(color: Theme.of(context).canvasColor),
                    )
                  ],
                ))
          ],
        ),
        OrderDetailsCashback(
            data: data,
            showCashback: showCashback.value,
            onClose: () => showCashback.value = false)
      ],
    );
  }
}
