import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final bool isRead;
  final String title;
  final String subtitle;
  final String time;
  final String date;
  final void Function() onTap;
  const NotificationTile({
    Key? key,
    required this.isRead,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.time,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(isRead);
    return ListTile(
      onTap: onTap,
      dense: true,
      tileColor: isRead ? Colors.grey.shade100 : Theme.of(context).canvasColor,
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 11),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time,
            style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 11),
          ),
          SizedBox(height: 4),
          Text(
            date,
            style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 11),
          ),
          SizedBox(height: 4),
          isRead
              ? SizedBox()
              : Text("NEW", style: TextStyle(fontSize: 8, color: Colors.red))
        ],
      ),
    );
  }
}
