import 'package:flutter/material.dart';

class PriceIndicator extends StatelessWidget {
  final String title;
  final double price;
  const PriceIndicator({required this.price, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text(
              title,
              style:
                  Theme.of(context).textTheme.headline5!.copyWith(fontSize: 14),
            )),
        Text(":"),
        Expanded(
            flex: 3,
            child: Text(
              price.toString(),
              textAlign: TextAlign.end,
              style:
                  Theme.of(context).textTheme.headline5!.copyWith(fontSize: 14),
            ))
      ],
    );
  }
}
