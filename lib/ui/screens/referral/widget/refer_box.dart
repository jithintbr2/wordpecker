import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ReferBox extends StatelessWidget {
  final String referralCode;
  final String shareMessage;
  const ReferBox(
      {Key? key, required this.referralCode, required this.shareMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Refer & Earn",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Your referral code ',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 14),
                    ),
                    TextSpan(
                      text: referralCode,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ]))
                ],
              ),
              ElevatedButton(
                  onPressed: () => Share.share(shareMessage),
                  child: Text('Share'))
            ],
          ),
        ),
      ),
    );
  }
}
