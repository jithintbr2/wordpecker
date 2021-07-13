import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/ui/screens/order_preview/widgets/price_indicator.dart';

class DeliveryOptions extends HookWidget {
  final ValueNotifier<AddressModel?> address;
  final ValueNotifier<bool> isScheduledOrder;
  final ValueNotifier<String> deliveryDate;
  // final double? deliveryCharges;
  const DeliveryOptions({
    Key? key,
    required this.address,
    required this.deliveryDate,
    required this.isScheduledOrder,
  }) : super(key: key);

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
    // LocalStorage _localStorage = LocalStorage();
    // AddressModel? _getAddress() {
    //   if (_localStorage.get('currentAddress') != null) {
    //     Map<String, dynamic> currentAddressRaw =
    //         jsonDecode(_localStorage.get('currentAddress') as String);
    //     return AddressModel.fromJson(currentAddressRaw);
    //   }
    //   return null;
    // }

    // final _address = useState(_getAddress());

    // AddressModel? _address = _getAddress();
    // Copied from Delvento. Horrible logic donot use this.
    String _getNowDateTime() {
      String nowDate = DateTime.now().toString();
      nowDate = nowDate.substring(0, nowDate.indexOf(" "));
      String nowTime = TimeOfDay.now().format(context);
      if (nowDate.isEmpty) return "$nowDate $nowTime";
      final split = nowDate.split('-');
      return "${split[2]}-${split[1]}-${split[0]} $nowTime";
    }

    String getYmdFromDmy(String dmy) {
      if (dmy.isEmpty) return dmy;
      final split = dmy.split("-");
      return "${split[2]}-${split[1]}-${split[0]}";
    }

    return Card(
      child: Column(
        children: [
          _customListTile(context, Icons.local_shipping, "Express Delivery",
              !isScheduledOrder.value, () {
            isScheduledOrder.value = false;
            deliveryDate.value = _getNowDateTime();
          }),
          Divider(),
          _customListTile(context, Icons.calendar_today, "Scheduled Order",
              isScheduledOrder.value, () {
            showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100))
                .then((selectedDate) {
              if (selectedDate != null) {
                showTimePicker(context: context, initialTime: TimeOfDay.now())
                    .then((selectedTime) {
                  String newDate = selectedDate.toString();
                  newDate = newDate.substring(0, newDate.indexOf(" "));
                  String convertedNewDate = getYmdFromDmy(newDate);
                  if (selectedTime != null) {
                    isScheduledOrder.value = true;
                    deliveryDate.value = "$convertedNewDate $selectedTime";
                  } else {
                    isScheduledOrder.value = true;
                    deliveryDate.value =
                        "$convertedNewDate ${TimeOfDay.now().format(context)}";
                  }
                });
              }
            });
          }),
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
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/address',
                      arguments: {
                        'returnToPrevious': true,
                        'franchiseId': address.value!.franchiseId
                      }).then((value) {
                    print(value);
                    if (value != null) address.value = value as AddressModel;
                  }),
                  child: Text(
                    "Tap to change",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/address', arguments: {
              'returnToPrevious': true,
              'franchiseId': address.value!.franchiseId
            }).then((value) {
              print(value);
              if (value != null) address.value = value as AddressModel;
            }),
            dense: true,
            leading: Icon(
              Icons.place,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              '${address.value!.house}, ${address.value!.locality}',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            subtitle: Text(
              "PIN: ${address.value!.pin}",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          // Divider(),
          // Padding(
          //     padding: EdgeInsets.all(10),
          //     child: PriceIndicator(
          //         price: deliveryCharges ?? 0, title: 'Delivery Charges'))
        ],
      ),
    );
  }
}
