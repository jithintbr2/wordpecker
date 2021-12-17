import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/request_details/request_details_model.dart';
import 'package:woodle/core/models/request_item/request_item_model.dart';
import 'package:woodle/ui/screens/request_details/bloc/request_details_bloc.dart';
import 'package:woodle/ui/screens/request_item_history/bloc/request_item_history_bloc.dart';
import 'package:woodle/ui/widgets/empty.dart';
import 'package:woodle/ui/widgets/failed.dart';
import 'package:woodle/ui/widgets/loading.dart';

class RequestDetailsPage extends HookWidget {
  final int requestId;
  const RequestDetailsPage({
    Key? key,
    required this.requestId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context
          .read<RequestDetailsBloc>()
          .add(RequestDetailsEvent.getData(requestId));
    }, []);
    return Scaffold(
        appBar: AppBar(
          title: Text("Request Details"),
        ),
        body: _buildBloc());
  }

  Widget _buildBloc() {
    return BlocBuilder<RequestDetailsBloc, RequestDetailsState>(
        builder: (context, state) => state.when(
            busy: () => LoadingView(),
            idle: (data) => _buildPage(context, data),
            failed: (error) => FailedView(
                exceptions: error,
                onRetry: () => context
                    .read<RequestDetailsBloc>()
                    .add(RequestDetailsEvent.getData(requestId)))));
  }

  Widget _buildPage(BuildContext context, RequestDetailsModel data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Request #: ${data.request_id}",
                                style: Theme.of(context).textTheme.headline6),
                          ],
                        ),
                        Divider(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(data.request_time,
                                style: Theme.of(context).textTheme.bodyText2),
                            Text(data.request_date,
                                style: Theme.of(context).textTheme.bodyText2),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: <Widget>[
                            Text(
                              "Request Status:",
                              // style: headingStyle,
                            ),
                            SizedBox(width: 16),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueGrey[600]),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 12),
                              child: Text(
                                "${data.status.toUpperCase()}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 16,
                          color: Colors.black,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                flex: 3,
                                child: Text(
                                  "Item",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                            Expanded(
                                child: Text("Qty",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                        Divider(
                          height: 16,
                          color: Colors.black,
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (_, int index) {
                            final RequestDetailsItemModel item =
                                data.items[index];
                            return Container(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(flex: 3, child: Text(item.item)),
                                  Expanded(
                                      child: Text("${item.qty}",
                                          textAlign: TextAlign.center)),
                                ],
                              ),
                            );
                          },
                          itemCount: data.items.length,
                          shrinkWrap: true,
                        ),
                        Divider(
                          height: 16,
                          color: Colors.black,
                        ),
                        data.remarks.trim().isEmpty
                            ? Container()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Remark",
                                        // sftyle: headingStyle,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(data.remarks)
                                ],
                              ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
              physics: AlwaysScrollableScrollPhysics(),
            ),
          ),
        ),
      ],
    );
  }
}
