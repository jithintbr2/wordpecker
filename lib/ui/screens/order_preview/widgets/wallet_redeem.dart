import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WalletRedeem extends HookWidget {
  final double walletAmount;
  final TextEditingController controller;
  const WalletRedeem({
    Key? key,
    required this.walletAmount,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _showButton = useState(true);
    final _validate = useState(false);
    // if (walletAmount == 0) return SizedBox();
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Redeem from Wallet",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('You have Rs.$walletAmount'),
                !_showButton.value
                    ? Wrap(
                        children: [
                          SizedBox(
                              width: 70,
                              height: 40,
                              child: TextField(
                                  controller: controller,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    // labelText: 'amount',
                                    errorText: _validate.value
                                        ? 'Exceeded Amount'
                                        : null,
                                  ))),
                          IconButton(
                              color: Colors.green,
                              onPressed: () {
                                if (controller.text.isNotEmpty &&
                                    double.parse(controller.text) >
                                        walletAmount)
                                  _validate.value = true;
                                else {
                                  _validate.value = false;
                                  _showButton.value = true;
                                }
                              },
                              icon: Icon(Icons.check_circle, size: 18))
                        ],
                      )
                    : controller.text.isNotEmpty
                        ? Wrap(
                            children: [
                              SizedBox(
                                  width: 70,
                                  height: 40,
                                  child: TextField(
                                      readOnly: true,
                                      controller: controller,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'amount',
                                      ))),
                              IconButton(
                                  color: Colors.red,
                                  onPressed: () {
                                    controller.clear();
                                    _showButton.value = true;
                                  },
                                  icon: Icon(Icons.remove, size: 18))
                            ],
                          )
                        : ElevatedButton(
                            onPressed: () => _showButton.value = false,
                            child: Text('Redeem'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
