import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/orders/orders_model.dart';
import 'package:woodle/ui/screens/orders/bloc/orders_bloc.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

class OrdersPage extends HookWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<OrdersBloc>().add(OrdersEvent.fetchData());
    }, []);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('My Orders'),
        ),
        body: _buildBloc());
  }

  Widget _buildBloc() {
    return BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) => state.when(
            loading: () => LoadingView(),
            loaded: (data) => _buildPage(context, data),
            failed: (exceptions) => FailedView(
                exceptions: exceptions,
                onRetry: () =>
                    context.read<OrdersBloc>().add(OrdersEvent.fetchData()))));
  }

  Widget _buildPage(BuildContext context, List<OrdersModel> data) {
    if (data.isNotEmpty) {
      Set<String> status = Set();
      status.add("All");
      status.addAll(Set.from(data.map((order) => order.status).toList()));

      return DefaultTabController(
          length: status.length,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Theme.of(context).primaryColor,
                child: TabBar(
                    isScrollable: true,
                    tabs: status
                        .map((value) => Tab(child: Text(value)))
                        .toList()),
              ),
              Expanded(
                child: TabBarView(
                  children: status
                      .map((value) => _buildTabView(
                          data
                              .where((order) =>
                                  order.status == value || value == "All")
                              .toList(),
                          context))
                      .toList(),
                ),
              )
            ],
          ));
    }

    return EmptyView(icon: Icons.receipt_long, title: 'No Orders');
  }

  Widget _buildTabView(List<OrdersModel> data, BuildContext context) {
    return RefreshIndicator(
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  onTap: () => Navigator.of(context).pushNamed('/orderDetails',
                      arguments: {"orderId": data[index].orderId}),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Wrap(
                    spacing: 4,
                    direction: Axis.vertical,
                    children: [
                      Text(
                        data[index].shopName,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      // Text(
                      //   "item.itemCount Items",
                      //   style: Theme.of(context).textTheme.caption,
                      // ),
                    ],
                  ),
                  subtitle: Text(data[index].status,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          // fontWeight:
                          //     item.isComplete ? FontWeight.normal : FontWeight.bold,
                          // color: item.isComplete ? Colors.green : Colors.red),
                          )),
                  trailing: Wrap(
                    spacing: 4,
                    direction: Axis.vertical,
                    children: [
                      Text(
                        data[index].orderTime,
                        textAlign: TextAlign.end,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(fontSize: 11),
                      ),
                      Text(
                        data[index].orderDate,
                        textAlign: TextAlign.end,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(fontSize: 11),
                      ),
                    ],
                  ),
                ),
            separatorBuilder: (_, __) => Divider(),
            itemCount: data.length),
        onRefresh: () async {
          context.read<OrdersBloc>().add(OrdersEvent.fetchData());
          return null;
        });
  }
}
