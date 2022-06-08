import 'package:cached_network_image/cached_network_image.dart';
import 'package:woodle/core/models/authors/authors_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AuthorTile extends HookWidget {
  final List<AuthorsModel> authors;
  const AuthorTile({required this.authors, Key? key}) : super(key: key);

  @override
  SliverGridDelegate _gridDelegate() =>
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1);
  Widget _buildItem(AuthorsModel author) => Container(
    child: Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          Container(
              height: double.infinity,
              child: CachedNetworkImage(
                imageUrl: author.imageUrl,
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
                color: Colors.black,
                child: Text(
                  author.authorName,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),

                )),
          )

        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: _gridDelegate(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () =>  Navigator.of(context)
                      .pushNamed('/shopDetail', arguments: {"shopId": authors[index].authorId,"authorId": authors[index].authorId,}),
                  child: _buildItem(authors[index]),
                ),
                itemCount:authors.length)
          ],
        ),
      );
}}
