import 'package:flutter/material.dart';
import 'package:woodle/ui/widgets/empty.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('My Orders'),
        ),
        // body: _buildPage(context),
        body: EmptyView(icon: Icons.shopping_bag, title: "No Orders Yet"));
  }

  Widget _buildPage(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              child: TabBar(
                isScrollable: true,
                tabs: [Tab(text: 'All')],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [_buildTabBarView()],
              ),
            )
          ],
        ));
  }

  Widget _buildTabBarView() {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.ac_unit),
              title: Wrap(
                spacing: 4,
                direction: Axis.vertical,
                children: [
                  Text(
                    "shopName",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "item.itemCount Items",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
              subtitle: Text("item.status",
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
                    "item.time",
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(fontSize: 11),
                  ),
                  Text(
                    "item.date",
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
        itemCount: 5);
  }
}
