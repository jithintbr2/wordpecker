import 'package:flutter/material.dart';

class OrderStep extends StatelessWidget {
  final bool isCompleted;
  final String title;
  final String time;
  final IconData icon;

  const OrderStep({
    Key? key,
    required this.isCompleted,
    required this.title,
    required this.time,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _color = isCompleted
        ? Theme.of(context).primaryColor
        : Theme.of(context).primaryColor.withOpacity(0.3);
    return Column(children: <Widget>[
      Icon(icon, color: _color),
      SizedBox(height: 4),
      Text(
        title,
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(fontSize: 12, color: _color),
      ),
      SizedBox(height: 4),
      Text(
        time,
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(fontSize: 10, color: _color),
      )
    ]);
  }
}
