import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/services/cart.dart';

class PaymentRedeem extends StatelessWidget {
  final CartService service;
  final double redeemedAmount;
  final void Function(double) onRedeem;
  final void Function() onRemove;

  PaymentRedeem({
    required this.service,
    required this.redeemedAmount,
    required this.onRedeem,
    required this.onRemove,
  });

  String getPriceString(double price) {
    String priceConverted = price.toStringAsFixed(2);
    return priceConverted.endsWith(".00")
        ? priceConverted.substring(0, priceConverted.lastIndexOf("."))
        : priceConverted;
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
    return StreamBuilder(
        stream: service.controller,
        initialData: service.initialValue(),
        builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
          if (snap.data != null && snap.data!.isNotEmpty) {
            totalPrice = 0;
            snap.data!.forEach((item) => totalPrice += item.salePrice!);
          }

          // return Container(
          //   child: redeemedAmount == 0
          //       ? InkWell(
          //           child: Container(
          //             color: Colors.brown[100]!.withOpacity(.5),
          //             child: Row(
          //               children: <Widget>[
          //                 Container(
          //                   height: 60,
          //                   width: 60,
          //                   child: Padding(
          //                     padding: const EdgeInsets.all(8.0),
          //                     child: Center(
          //                       child: Column(
          //                         mainAxisSize: MainAxisSize.min,
          //                         children: <Widget>[
          //                           Icon(
          //                             Icons.wallet_giftcard_outlined,
          //                             color: Colors.white,
          //                           ),
          //                         ],
          //                       ),
          //                     ),
          //                   ),
          //                   color: Colors.brown,
          //                 ),
          //                 SizedBox(width: 16),
          //                 Expanded(
          //                     child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.stretch,
          //                   children: <Widget>[
          //                     Text(
          //                       "Redeem",
          //                       style: Theme.of(context)
          //                           .textTheme
          //                           .subtitle1!
          //                           .copyWith(fontWeight: FontWeight.bold),
          //                       textAlign: TextAlign.start,
          //                     ),
          //                     SizedBox(height: 4),
          //                     Text(
          //                       "Redeem from wallet balance",
          //                       style: Theme.of(context).textTheme.caption,
          //                       textAlign: TextAlign.start,
          //                     )
          //                   ],
          //                 )),
          //                 Icon(
          //                   Icons.chevron_right,
          //                   color: Colors.grey,
          //                 ),
          //               ],
          //             ),
          //           ),
          //           onTap: () => Navigator.pushNamed(context, '/walletRedeem',
          //                   arguments: {'orderAmount': totalPrice})
          //               .then((value) => onRedeem(value as double)),
          //         )
          //       : Container(
          //           color: Colors.amber[100]!.withOpacity(.5),
          //           child: Row(
          //             children: <Widget>[
          //               Container(
          //                 height: 60,
          //                 width: 60,
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: Center(
          //                     child: Column(
          //                       mainAxisSize: MainAxisSize.min,
          //                       children: <Widget>[
          //                         Icon(
          //                           Icons.check_circle,
          //                           color: Colors.white,
          //                           size: 16,
          //                         ),
          //                         SizedBox(height: 8),
          //                         Text(
          //                           "Applied",
          //                           style: Theme.of(context)
          //                               .textTheme
          //                               .caption!
          //                               .copyWith(
          //                                   color: Colors.white,
          //                                   fontWeight: FontWeight.bold),
          //                         )
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //                 color: Colors.amber,
          //               ),
          //               SizedBox(width: 16),
          //               Expanded(
          //                   child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.stretch,
          //                 children: <Widget>[
          //                   Text(
          //                     "Claimed",
          //                     style: Theme.of(context)
          //                         .textTheme
          //                         .subtitle1!
          //                         .copyWith(fontWeight: FontWeight.bold),
          //                     textAlign: TextAlign.start,
          //                   ),
          //                   SizedBox(height: 4),
          //                   Text(
          //                     "You saved ₹ ${getPriceString(redeemedAmount)}",
          //                     style: Theme.of(context).textTheme.caption,
          //                     textAlign: TextAlign.start,
          //                   )
          //                 ],
          //               )),
          //               IconButton(
          //                 icon: Icon(
          //                   Icons.delete_outline,
          //                   color: Colors.grey,
          //                 ),
          //                 onPressed: onRemove,
          //               ),
          //             ],
          //           ),
          //         ),
          // );
          return Container();
        });
  }
}

// class WalletRedeem extends HookWidget {
//   final double walletAmount;
//   final TextEditingController controller;
//   const WalletRedeem({
//     Key? key,
//     required this.walletAmount,
//     required this.controller,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final _showButton = useState(true);
//     final _validate = useState(false);
//     // if (walletAmount == 0) return SizedBox();
//     return Card(
//       child: Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Redeem from Wallet",
//                 style: TextStyle(fontWeight: FontWeight.bold)),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('You have Rs.$walletAmount'),
//                 !_showButton.value
//                     ? Wrap(
//                         children: [
//                           SizedBox(
//                               width: 70,
//                               height: 40,
//                               child: TextField(
//                                   controller: controller,
//                                   keyboardType: TextInputType.number,
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(),
//                                     // labelText: 'amount',
//                                     errorText: _validate.value
//                                         ? 'Exceeded Amount'
//                                         : null,
//                                   ))),
//                           IconButton(
//                               color: Colors.green,
//                               onPressed: () {
//                                 if (controller.text.isNotEmpty &&
//                                     double.parse(controller.text) >
//                                         walletAmount)
//                                   _validate.value = true;
//                                 else {
//                                   _validate.value = false;
//                                   _showButton.value = true;
//                                 }
//                               },
//                               icon: Icon(Icons.check_circle, size: 18))
//                         ],
//                       )
//                     : controller.text.isNotEmpty
//                         ? Wrap(
//                             children: [
//                               SizedBox(
//                                   width: 70,
//                                   height: 40,
//                                   child: TextField(
//                                       readOnly: true,
//                                       controller: controller,
//                                       decoration: InputDecoration(
//                                         border: OutlineInputBorder(),
//                                         labelText: 'amount',
//                                       ))),
//                               IconButton(
//                                   color: Colors.red,
//                                   onPressed: () {
//                                     controller.clear();
//                                     _showButton.value = true;
//                                   },
//                                   icon: Icon(Icons.remove, size: 18))
//                             ],
//                           )
//                         : ElevatedButton(
//                             onPressed: () => _showButton.value = false,
//                             child: Text('Redeem'))
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
