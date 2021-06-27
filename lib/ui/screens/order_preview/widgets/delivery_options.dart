import 'package:flutter/material.dart';

class DeliveryOptions extends StatelessWidget {
  const DeliveryOptions({Key? key}) : super(key: key);

  Widget _customListTile(BuildContext context, IconData icon, String title,
      bool selected, void Function()? onTap,
      {String? subtitle}) {
    Color _activeColor = Theme.of(context).primaryColor;
    Widget? _subtitle = subtitle != null ? Text(subtitle) : null;
    return ListTile(
      leading: Icon(icon, color: _activeColor),
      dense: true,
      title: Text(title),
      subtitle: _subtitle,
      trailing: Icon(Icons.check_circle, size: 18),
      onTap: onTap,
      selected: selected,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          _customListTile(
              context, Icons.local_shipping, "Express Delivery", false, () {}),
          Divider(),
          _customListTile(
              context, Icons.calendar_today, "Scheduled Order", true, () {}),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Address",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Tap to change",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          ListTile(
            dense: true,
            leading: Icon(
              Icons.place,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              "address.locality, address.houseNumber",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            subtitle: Text(
              "PIN: address.pin",
              style: Theme.of(context).textTheme.caption,
            ),
          )
        ],
      ),
    );
  }
}
