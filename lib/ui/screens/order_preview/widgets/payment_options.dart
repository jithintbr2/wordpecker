import 'package:flutter/material.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({Key? key}) : super(key: key);

  Widget _customListTile(BuildContext context, IconData icon, String title,
      bool selected, void Function()? onTap,
      {String? subtitle}) {
    // Color _activeColor = Theme.of(context).primaryColor;
    Widget? _subtitle = subtitle != null ? Text(subtitle) : null;
    return ListTile(
      leading: Icon(icon),
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
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Payment Method",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            _customListTile(
                context, Icons.local_atm, "Cash on Delivery", true, () {}),
          ],
        ),
      ),
    );
  }
}
