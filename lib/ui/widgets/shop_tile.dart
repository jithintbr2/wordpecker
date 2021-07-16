import 'package:cached_network_image/cached_network_image.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ShopTile extends HookWidget {
  final ShopModel shop;
  const ShopTile({required this.shop, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          ListTile(
            onTap: () => Navigator.of(context)
                .pushNamed('/shopDetail', arguments: {"shopId": shop.shopId}),
            leading: Container(
                height: 64,
                width: 64,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: CachedNetworkImage(
                  imageUrl: shop.imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (_, __) =>
                      Center(child: Image.asset(Assets.appIcon)),
                  errorWidget: (_, __, ___) => Center(child: Icon(Icons.error)),
                )),
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Text(
                shop.shopName,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 16, color: Colors.black),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(shop.services != null ? shop.services!.join(' | ') : '',
                    style: TextStyle(color: Colors.black)),
                // shop.ratingCount != null && shop.ratingCount! > 0
                //     ?
                Wrap(
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                          5,
                          (i) => Icon(
                                Icons.star,
                                color: i <
                                        ( //shop.rating ??
                                            5)
                                    ? Colors.yellow[800]
                                    : Colors.grey.withOpacity(0.5),
                                size: 14,
                              )).toList(),
                    ),
                    SizedBox(width: 4),
                    Text(
                      ( //shop.rating ??
                              5)
                          .toString(),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    )
                  ],
                )
                // : SizedBox(),
              ],
            ),
            // trailing: shop.ratingCount! > 0
            //     ? Wrap(children: [
            //         Icon(Icons.stars, size: 10),
            //         SizedBox(width: 4),
            //         Text(
            //           shop.rating.toString(),
            //           style: Theme.of(context)
            //               .textTheme
            //               .subtitle2!
            //               .copyWith(fontSize: 8),
            //         )
            //       ])
            //     : SizedBox()
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
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
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
      ),
    );
  }
}
