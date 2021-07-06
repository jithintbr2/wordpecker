import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/services/storage.dart';

class DeliveryOptions extends HookWidget {
  const DeliveryOptions({Key? key}) : super(key: key);

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
    LocalStorage _localStorage = LocalStorage();
    AddressModel? _getAddress() {
      if (_localStorage.get('currentAddress') != null) {
        Map<String, dynamic> currentAddressRaw =
            jsonDecode(_localStorage.get('currentAddress') as String);
        return AddressModel.fromJson(currentAddressRaw);
      }
      return null;
    }

    final _address = useState(_getAddress());

    // AddressModel? _address = _getAddress();

    return Card(
      child: Column(
        children: [
          _customListTile(
              context, Icons.local_shipping, "Express Delivery", true, () {}),
          Divider(),
          _customListTile(
              context, Icons.calendar_today, "Scheduled Order", false, () {}),
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
            onTap: () => Navigator.pushNamed(context, '/address', arguments: {
              'returnToPrevious': true,
              'franchiseId': _address.value!.franchiseId
            }).then((value) {
              print(value);
              if (value != null) _address.value = value as AddressModel;
            }),
            dense: true,
            leading: Icon(
              Icons.place,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              '${_address.value!.house}, ${_address.value!.locality}',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            subtitle: Text(
              "PIN: ${_address.value!.pin}",
              style: Theme.of(context).textTheme.caption,
            ),
          )
        ],
      ),
    );
  }
}
