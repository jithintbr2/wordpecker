import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/settings/assets.dart';

class ShopCard extends StatelessWidget {
  final ShopModel shop;
  const ShopCard({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed('/shopDetail', arguments: {"shopId": shop.shopId}),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            height: 150,
            width: 160,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CachedNetworkImage(
                        height: 90,
                        imageUrl: shop.imageUrl,
                        fit: BoxFit.cover,
                        placeholder: (_, __) =>
                            Center(child: Image.asset(Assets.appIcon)),
                        errorWidget: (_, __, ___) => Center(
                            child: Icon(Icons.error,
                                color: Theme.of(context).accentColor))),
                    SizedBox(height: 4),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(shop.shopName,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 12),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis)),
                    SizedBox(height: 4),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: (shop.services ?? []).isEmpty
                            ? SizedBox()
                            : Text(shop.services!.join(' • '),
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(fontSize: 10))),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: shop.servicesNow != null && shop.servicesNow!
                      ? Container()
                      : Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            width: 60,
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
                            color: Colors.red,
                            child: Center(
                                child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text(
                                  "Closed",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                          ),
                        ),
                )
              ],
            )),
      ),
    );
  }
}
