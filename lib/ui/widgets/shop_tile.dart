import 'package:cached_network_image/cached_network_image.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ShopTile extends HookWidget {
  final ShopModel shop;
  const ShopTile({required this.shop, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
            height: 64,
            width: 64,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: CachedNetworkImage(
              imageUrl: shop.image!,
              fit: BoxFit.cover,
              placeholder: (_, __) =>
                  Center(child: Image.asset(Assets.appIcon)),
              errorWidget: (_, __, ___) => Center(child: Icon(Icons.error)),
            )),
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Text(
            shop.name,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
          ),
        ),
        subtitle: Text(shop.services != null ? shop.services!.join(' | ') : ''),
        trailing: shop.ratingCount! > 0
            ? Wrap(children: [
                Icon(Icons.stars, size: 10),
                SizedBox(width: 4),
                Text(
                  shop.rating.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 8),
                )
              ])
            : SizedBox());
  }
}
