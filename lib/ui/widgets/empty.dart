import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  final IconData icon;
  final String title;
  const EmptyView({required this.icon, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.vertical,
        spacing: 4,
        children: <Widget>[
          Icon(
            icon,
            color: Theme.of(context).accentColor.withOpacity(0.5),
            size: 80,
          ),
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).accentColor.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
