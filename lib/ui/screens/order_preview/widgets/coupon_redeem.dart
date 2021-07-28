import 'package:flutter/material.dart';
import 'package:woodle/core/models/coupon/coupon_model.dart';

class CouponRedeem extends StatelessWidget {
  final CouponModel? selectedCoupon;
  final void Function() onSelect;
  final void Function() onRemove;
  const CouponRedeem({
    Key? key,
    this.selectedCoupon,
    required this.onRemove,
    required this.onSelect,
  }) : super(key: key);

  Widget _selectCoupon(BuildContext context) {
    // return ListTile(
    //   onTap: onSelect,
    //   leading: Icon(Icons.note),
    //   title: Text('Select a Coupon'),
    //   trailing: Icon(Icons.arrow_right),
    // );

    return InkWell(
      child: Container(
        color: Colors.blueAccent[100]!.withOpacity(.5),
        child: Row(
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.local_offer,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              color: Colors.blueAccent,
            ),
            SizedBox(width: 16),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Apply Coupon",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 4),
                Text(
                  "Get discount with your order",
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.start,
                )
              ],
            )),
            Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      onTap: onSelect,
    );
  }

  Widget _selectedCoupon(BuildContext context) {
    // return ListTile(
    //   leading: Icon(
    //     Icons.note,
    //     color: Theme.of(context).primaryColor,
    //   ),
    //   title: Text(selectedCoupon!.couponCode),
    //   subtitle: Text('Applied Rs.${selectedCoupon!.couponDiscount} discount'),
    //   trailing: IconButton(onPressed: onRemove, icon: Icon(Icons.close)),
    // );

    return Container(
      color: Colors.green[100]!.withOpacity(.5),
      child: Row(
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.check_circle,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Applied",
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            color: Colors.green,
          ),
          SizedBox(width: 16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "${selectedCoupon!.couponCode}",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 4),
              Text(
                "You saved ₹ ${selectedCoupon!.couponDiscount}",
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.start,
              )
            ],
          )),
          IconButton(
            icon: Icon(
              Icons.delete_outline,
              color: Colors.grey,
            ),
            onPressed: onRemove,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return selectedCoupon != null
        ? _selectedCoupon(context)
        : _selectCoupon(context);
    // return Card(
    //   child: Padding(
    //       padding: EdgeInsets.all(10),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text("Coupons", style: TextStyle(fontWeight: FontWeight.bold)),
    //           SizedBox(height: 10),
    //           selectedCoupon != null
    //               ? _selectedCoupon(context)
    //               : _selectCoupon(context),
    //         ],
    //       )),
    // );
  }
}
