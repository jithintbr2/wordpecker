import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShopSliverAppBar extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  const ShopSliverAppBar({
    Key? key,
    this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).primaryColor,
      pinned: true,
      expandedHeight: 150,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) => FlexibleSpaceBar(
          title: Text(title ?? ''),
          background: imageUrl == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : CachedNetworkImage(
                  imageUrl: imageUrl!,
                  fit: BoxFit.cover,
                  placeholder: (_, __) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (_, __, ___) => Center(
                    child: Icon(
                      Icons.error,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
