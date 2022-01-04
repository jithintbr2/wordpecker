import 'package:flutter/material.dart';
import 'package:woodle/core/models/coupon/coupon_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/order_preview/widgets/price_indicator.dart';
import 'package:woodle/ui/widgets/item_varient_tile.dart';

class CartPrice extends StatelessWidget {
  final CartService service;
  final double deliveryCharge;
  final double redeemedAmount;
  final double couponDiscount;
  final ValueNotifier<List<int>> couponApplicableOn;
  final ValueNotifier<CouponModel?> selectedCoupon;
  const CartPrice({
    required this.service,
    required this.deliveryCharge,
    required this.couponDiscount,
    required this.redeemedAmount,
    required this.couponApplicableOn,
    required this.selectedCoupon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: service.controller,
        initialData: service.initialValue(),
        builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
          if (snap.data != null && snap.data!.isNotEmpty) {
            List<ItemVarientModel> sortedData = snap.data!.toSet().toList();
            double totalPrice = 0;

            snap.data!.forEach((item) => totalPrice += item.salePrice!);

            if (selectedCoupon.value != null) {
              bool _flag = false;
              snap.data!.forEach((item) {
                if (couponApplicableOn.value.contains(item.varientId))
                  _flag = true;
              });
              if (!_flag) {
                WidgetsBinding.instance?.addPostFrameCallback((_) {
                  print('okay condition satisfied');
                  selectedCoupon.value = null;
                  couponApplicableOn.value = [];
                });
              }
            }

            return Card(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      int quantity = 0;
                      snap.data!.forEach((item) {
                        if (item.varientId == sortedData[index].varientId)
                          quantity += 1;
                      });
                      return ItemVarientTile(
                          showParent: true,
                          item: sortedData[index],
                          onAdd: () {
                            service.addItem(context, sortedData[index]);
                            selectedCoupon.value = null;
                            couponApplicableOn.value = [];
                          },
                          onRemove: () {
                            if (snap.data!.length == 1) {
                              Navigator.of(context).pop();
                            }
                            service.removeItem(sortedData[index]);
                            selectedCoupon.value = null;
                            couponApplicableOn.value = [];
                          },
                          quantity: quantity);
                    },
                    itemCount: sortedData.length,
                  ),
                  Divider(),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PriceIndicator(
                              price: totalPrice, title: 'Order Total'),
                          SizedBox(height: 10),
                          PriceIndicator(
                              price: deliveryCharge, title: 'Delivery Charges'),
                          SizedBox(height: 10),
                          couponDiscount > 0
                              ? PriceIndicator(
                                  price: couponDiscount,
                                  title: 'Coupon Discount')
                              : SizedBox(),
                          couponDiscount > 0
                              ? SizedBox(height: 10)
                              : SizedBox(),
                          redeemedAmount > 0
                              ? PriceIndicator(
                                  price: redeemedAmount,
                                  title: 'Redeemed Amount')
                              : SizedBox(),
                          Divider(),
                          PriceIndicator(
                              price: deliveryCharge +
                                  totalPrice -
                                  couponDiscount -
                                  redeemedAmount,
                              title: 'Grand Total')
                        ],
                      ))
                ],
              ),
            );
          }
          return SizedBox();
        });
  }
}
