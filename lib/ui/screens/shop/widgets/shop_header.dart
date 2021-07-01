import 'package:flutter/material.dart';
import 'package:woodle/core/models/shop/shop_model.dart';

class ShopHeader extends StatelessWidget {
  final ShopModel shop;
  const ShopHeader({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  shop.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                _ratingBox(context, shop.rating ?? 0, shop.ratingCount ?? 0)
              ],
            ),
            shop.services!.isEmpty
                ? SizedBox()
                : Text(shop.services!.join(' • ')),
            Divider(height: 1),
          ],
        ));
  }

  Widget _ratingBox(BuildContext context, double rating, int ratingCount) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.stars),
            SizedBox(width: 8),
            Text(
              ratingCount > 0 ? rating.toString() : '-',
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 18),
            )
          ],
        ),
        Text(
          ratingCount > 0 ? '$ratingCount Ratings' : 'Add Rating',
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  }

  // Widget _filter() {

  // }
}
