import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:woodle/core/models/category/category_model.dart';
import 'package:woodle/core/settings/assets.dart';

class Category extends StatelessWidget {
  final String? title;
  final List<CategoryModel> items;
  final void Function(int) onTap;
  final int limit;
  const Category({
    this.title,
    required this.items,
    required this.onTap,
    required this.limit,
    Key? key,
  }) : super(key: key);

  SliverGridDelegate _gridDelegate() =>
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1);

  Widget _buildItem(BuildContext context, CategoryModel item) => Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Container(
                height: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: item.imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (_, __) =>
                      Center(child: Image.asset(Assets.appIcon)),
                  errorWidget: (_, __, ___) => Center(child: Icon(Icons.error)),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(1),
                  color: Colors.white70,
                  child: Text(
                    item.title,
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return SizedBox();
    return Wrap(
      children: [
        title != null
            ? Text(title!,
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, height: 2))
            : SizedBox(),
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: _gridDelegate(),
            itemBuilder: (context, index) => InkWell(
                  onTap: () => onTap(index),
                  child: _buildItem(context, items[index]),
                ),
            itemCount: min(limit, items.length))
      ],
    );
  }
}
