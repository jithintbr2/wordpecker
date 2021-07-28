import 'package:flutter/material.dart';
import 'package:woodle/core/models/coupon/coupon_model.dart';
import 'package:woodle/core/settings/assets.dart';

class CouponsPage extends StatelessWidget {
  final List<CouponModel> coupons;
  final void Function(CouponModel) onSelect;
  const CouponsPage({Key? key, required this.coupons, required this.onSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Coupons')),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Text(
                        "Have a Coupon Code?",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              // initialValue: widget.couponCode,
                              // key: _couponCodeKey,
                              decoration: InputDecoration(
                                labelText: "Coupon Code",
                                isDense: true,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Apply'),
                          ),
                        ),
                      ],
                    ),
                    // showStatus
                    //     ? Padding(
                    //         padding: EdgeInsets.only(top: 16),
                    //         child: Center(
                    //           child: Row(
                    //               mainAxisSize: MainAxisSize.min,
                    //               children: [
                    //                 SizedBox(
                    //                     height: 16,
                    //                     width: 16,
                    //                     child: checkingCoupon
                    //                         ? CircularProgressIndicator()
                    //                         : Container()),
                    //                 SizedBox(width: 4),
                    //                 Text(
                    //                   infoText,
                    //                   style: TextStyle(
                    //                       color: checkingCoupon
                    //                           ? Colors.black
                    //                           : couponValid
                    //                               ? Colors.green
                    //                               : Colors.red),
                    //                 ),
                    //                 SizedBox(width: 16),
                    //               ]),
                    //         ),
                    //       )
                    //     : Container(),
                  ],
                ),
              ),
              SizedBox(height: 16),
              _buildCouponList(context),
              SizedBox(height: 16),
            ],
          ),
        )

        // ListView.separated(
        //   itemCount: coupons.length,
        //   itemBuilder: (context, index) => ListTile(
        //     onTap: () => onSelect(coupons[index]),
        //     leading: Text('Rs. ${coupons[index].couponDiscount}'),
        //     title: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           coupons[index].couponCode,
        //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        //         ),
        //         Divider(),
        //         Text(coupons[index].couponDescription)
        //       ],
        //     ),
        //     subtitle:
        //         Text('${coupons[index].validFrom} - ${coupons[index].validTo}'),
        //     trailing: Icon(Icons.arrow_right),
        //   ),
        //   separatorBuilder: (_, __) => Divider(),
        // ),
        );
  }

  Widget _buildCouponList(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, int index) {
        final CouponModel coupon = coupons[index];
        return InkWell(
          onTap: () => onSelect(coupons[index]),
          // onTap: coupon.status
          //     ? () {
          //         _couponCode = coupon.couponCode;
          //         _couponBloc.add(CheckCouponCode(
          //             widget.shopId, coupon.couponCode, widget.deliveryCharge));
          //       }
          //     : () {
          //         Fluttertoast.showToast(
          //             msg: "Can't use this coupon right now");
          //       },
          child: Opacity(
            opacity: coupon.status ? 1.0 : 0.5,
            child: Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 16, bottom: 16),
                          child: Image.asset(
                            Assets.offerTagIcon,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Container(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "${coupon.couponType == "percent" ? "${coupon.couponDiscount} % " : "₹ ${coupon.couponDiscount}"}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  coupon.couponCode,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "${coupon.couponDescription}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color: Colors.indigo, fontSize: 14),
                                ),
                                SizedBox(height: 4),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(10)),
                      child: Container(
                        height: 32,
                        color: Colors.grey[300],
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 100,
                            ),
                            Expanded(
                              child: Text(
                                "Valid from ${coupon.validFrom} to ${coupon.validTo}",
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
      itemCount: coupons.length,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 4),
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
