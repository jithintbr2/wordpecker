import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:woodle/core/models/item/item_model.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/settings/assets.dart';

class ItemBox extends StatelessWidget {
  final ItemModel data;
  const ItemBox({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('/item',
          arguments: {'itemId': data.id, 'itemName': data.name}),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            CachedNetworkImage(
                height: 70,
                imageUrl: data.varients[0].image,
                fit: BoxFit.cover,
                placeholder: (_, __) =>
                    Center(child: Image.asset(Assets.appIcon)),
                errorWidget: (_, __, ___) => Center(
                    child: Icon(Icons.error,
                        color: Theme.of(context).accentColor))),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                child: Text(data.name,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis)),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
                child: Text(data.varients[0].shopName,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis)),
          ],
        ),
      ),
    );
  }
}
