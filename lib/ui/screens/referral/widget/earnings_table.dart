import 'package:flutter/material.dart';
import 'package:woodle/core/models/referral_earning/referral_earning_model.dart';

class EarningsTable extends StatelessWidget {
  final List<ReferralEarningModel> earnings;
  const EarningsTable({Key? key, required this.earnings}) : super(key: key);

  Widget _tableRow(BuildContext context, String column1, String column2,
      String column3, String column4,
      {bool isHeading = false}) {
    Widget _column(int flex, String heading) {
      return Expanded(
          flex: flex,
          child: Text(
            heading,
            style: isHeading
                ? TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).canvasColor)
                : null,
          ));
    }

    return Container(
      padding: isHeading
          ? EdgeInsets.symmetric(horizontal: 6, vertical: 8)
          : EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      color: isHeading ? Theme.of(context).primaryColor : null,
      child: Row(
        children: <Widget>[
          _column(1, column1),
          _column(4, column2),
          _column(2, column3),
          _column(2, column4)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (earnings.isNotEmpty)
      return Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Referrals",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(0),
              child: Column(
                children: [
                  _tableRow(context, "", "Name", "Joined", "Earnings",
                      isHeading: true),
                  ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      itemBuilder: (_, index) => _tableRow(
                          context,
                          (index + 1).toString(),
                          earnings[index].customerName,
                          earnings[index].joinedDate,
                          earnings[index].earnings.toString()),
                      separatorBuilder: (_, __) => Divider(),
                      itemCount: earnings.length)
                ],
              ),
            )
          ],
        ),
      );
    return SizedBox();
  }
}
