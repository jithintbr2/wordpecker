import 'package:flutter/material.dart';

class PaymentOptions extends StatelessWidget {
  final ValueNotifier<bool> isOnlinePayment;
  const PaymentOptions({Key? key, required this.isOnlinePayment})
      : super(key: key);

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
      trailing: Icon(selected ? Icons.check_circle : Icons.circle, size: 18),
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
            _customListTile(context, Icons.local_atm, "Cash on Delivery",
                !isOnlinePayment.value, () => isOnlinePayment.value = false),
            _customListTile(context, Icons.local_atm, "Online Payment",
                isOnlinePayment.value, () => isOnlinePayment.value = true),
          ],
        ),
      ),
    );
  }
}
