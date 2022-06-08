import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:woodle/core/models/category/category_model.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/ui/screens/category_view_all/category_view_all.dart';

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

  // SliverGridDelegate _gridDelegate() =>
  //     SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 5, childAspectRatio: 1);
  //
  // Widget _buildItem(CategoryModel item) => Stack(
  //   children: [
  //     Container(
  //         height: double.infinity,
  //         child: CachedNetworkImage(
  //           imageUrl: item.imageUrl,
  //           fit: BoxFit.cover,
  //           placeholder: (_, __) =>
  //               Center(child: Image.asset(Assets.appIcon)),
  //           errorWidget: (_, __, ___) => Center(child: Icon(Icons.error)),
  //         )),
  //     SizedBox(height: 30,),
  //     Align(
  //       alignment: Alignment.bottomCenter,
  //       child: Padding(
  //         padding: const EdgeInsets.only(top: 20),
  //         child: Container(
  //             width: double.infinity,
  //             padding: EdgeInsets.all(1),
  //             child: Text(
  //               item.title,
  //               textAlign: TextAlign.center,
  //               style: TextStyle(color: Colors.black,fontSize: 12),
  //
  //             )),
  //       ),
  //     )
  //
  //   ],
  // );

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return SizedBox();
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (context, index) => SizedBox(
            height: 120,
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () =>  Navigator.of(context).pushNamed('/itemList', arguments: {
                      "categories": items,
                      "categoryName": items[index].title,
                      "categoryId": items[index].id
                    }),
                    child: Card(

                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child:Container(
                          height: 80,
                          width: 100,
                          child: Column(
                            children: [
                              Container(
                                height: 80,

                                          child: CachedNetworkImage(
                                            imageUrl: items[index].imageUrl,
                                            fit: BoxFit.cover,
                                            placeholder: (_, __) =>
                                                Center(child: Image.asset(Assets.appIcon)),
                                            errorWidget: (_, __, ___) => Center(child: Icon(Icons.error)),
                                          )),
                              Container(
                                width: 100,
                                  color: Colors.black,

                                  padding: EdgeInsets.all(1),
                                  child: Text(
                                    items[index].title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white,fontSize: 12),

                                  ))
                            ],
                          ),
                        ),




                    ),
                  );
                },
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding:
                EdgeInsets.symmetric(horizontal: 10))),
        separatorBuilder: (_, __) => SizedBox(height: 10));


    //   Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 10),
    //   child: Column(
    //     children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         crossAxisAlignment: CrossAxisAlignment.end,
    //         children: [
    //           // title != null
    //           //     ? Text("Explore $title by Category",
    //           //         style: TextStyle(
    //           //             fontSize: 18, fontWeight: FontWeight.bold, height: 2))
    //           //     : SizedBox(),
    //           items.length > limit
    //               ? InkWell(
    //                   onTap: () => Navigator.of(context).push(MaterialPageRoute(
    //                       builder: (context) => CategoryViewAll(
    //                             items: items,
    //                             title: title ?? '',
    //                             onTap: onTap,
    //                           ))),
    //                   child: Container(
    //                     padding:
    //                         EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    //                     decoration: BoxDecoration(
    //                         border: Border.all(
    //                             color: Theme.of(context).primaryColor,
    //                             width: 1),
    //                         borderRadius: BorderRadius.circular(5)),
    //                     child: Text('View All',
    //                         style: TextStyle(
    //                             color: Theme.of(context).primaryColor)),
    //                   ),
    //                 )
    //
                  // OutlinedButton(
                  //     style: OutlinedButton.styleFrom(padding: EdgeInsets.zero),
                  //     onPressed: () =>
                  //         Navigator.of(context).push(MaterialPageRoute(
                  //             builder: (context) => CategoryViewAll(
                  //                   items: items,
                  //                   title: title ?? '',
                  //                   onTap: onTap,
                  //                 ))),
                  //     child: Text('View All'))
    //               : SizedBox()
    //         ],
    //       ),
    //       SizedBox(height: 5),
    //       GridView.builder(
    //           physics: NeverScrollableScrollPhysics(),
    //           shrinkWrap: true,
    //           gridDelegate: _gridDelegate(),
    //           itemBuilder: (context, index) => InkWell(
    //                 onTap: () => onTap(index),
    //                 child: _buildItem(items[index]),
    //               ),
    //           itemCount: min(limit, items.length)),
    //     ],
    //   ),
    // );
  }
}
