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
      expandedHeight: 200,
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
      bottom: PreferredSize(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: TextField(
              // focusNode: _focusNode,
              // controller: controller,
              decoration: InputDecoration(
            isDense: true,
            hintText: "Search in $title",
            filled: true,
            border: InputBorder.none,
            prefixIcon: Icon(Icons.grid_view, color: Colors.grey),
            // suffixIcon: _focusNode.hasFocus
            //     ? IconButton(
            //         icon: Icon(Icons.close),
            //         onPressed: () {
            //           _focusNode.unfocus();
            //           controller.clear();
            //         },
            //       )
            //     : Icon(Icons.search)
          )),
        ),
        preferredSize: Size.fromHeight(55),
      ),
    );
  }
}
