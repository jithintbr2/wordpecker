import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/request_item/request_item_model.dart';
import 'package:woodle/ui/screens/request_item_history/bloc/request_item_history_bloc.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/loading.dart';

class RequestItemHistoryPage extends HookWidget {
  const RequestItemHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context
          .read<RequestItemHistoryBloc>()
          .add(RequestItemHistoryEvent.getData());
    }, []);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('My Requests'),
        ),
        body: _buildBloc());
  }

  Widget _buildBloc() {
    return BlocBuilder<RequestItemHistoryBloc, RequestItemHistoryState>(
        builder: (context, state) => state.when(
              busy: () => LoadingView(),
              idle: (data) => _buildPage(context, data),
            ));
  }

  Widget _buildPage(BuildContext context, List<RequestItemModel> data) {
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
    return EmptyView(icon: Icons.receipt_long, title: 'No Requests');
  }

  Widget _buildTabView(List<RequestItemModel> data, BuildContext context) {
    return RefreshIndicator(
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  onTap: () => Navigator.of(context).pushNamed(
                      '/requestDetails',
                      arguments: {"requestId": data[index].request_id}),
                  leading: Icon(
                    Icons.request_quote,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Wrap(
                    spacing: 4,
                    direction: Axis.vertical,
                    children: [
                      Text(
                        '${data[index].items} items',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Text(data[index].status,
                      style: Theme.of(context).textTheme.caption!.copyWith()),
                  trailing: Wrap(
                    spacing: 4,
                    direction: Axis.vertical,
                    children: [
                      Text(
                        data[index].request_time,
                        textAlign: TextAlign.end,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(fontSize: 11),
                      ),
                      Text(
                        data[index].request_date,
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
          context
              .read<RequestItemHistoryBloc>()
              .add(RequestItemHistoryEvent.getData());
          return null;
        });
  }
}
