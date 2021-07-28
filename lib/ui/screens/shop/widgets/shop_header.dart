import 'package:flutter/material.dart';
import 'package:woodle/core/models/menu/menu_model.dart';
import 'package:woodle/core/models/shop/shop_model.dart';

class ShopHeader extends StatelessWidget {
  final ShopModel shop;
  final int selectedMenuId;
  final void Function(int menuId) onMenuSelection;
  const ShopHeader({
    Key? key,
    required this.shop,
    required this.selectedMenuId,
    required this.onMenuSelection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  shop.shopName,
                  style: Theme.of(context).textTheme.headline6,
                ),
                InkWell(
                  // onTap: () => Navigator.of(context).pushNamed('/shopReview',
                  //     arguments: {'shopId': shop.shopId}),
                  child: _ratingBox(
                      context, shop.rating ?? 0, shop.ratingCount ?? 0),
                )
              ],
            ),
            (shop.services ?? []).isEmpty
                ? SizedBox()
                : Text(shop.services!.join(' • '),
                    style: Theme.of(context).textTheme.caption),
            Row(
              children: [
                //Custom item ...like veg selector for food apps.
                InkWell(
                  onTap: () {
                    showDialog<int>(
                        context: context,
                        builder: (_) {
                          List<MenuModel> menuItems = [
                            MenuModel(id: -1, title: "All", items: [])
                          ];
                          shop.category?.forEach((category) {
                            if (category.id > 0) menuItems.add(category);
                          });
                          return AlertDialog(
                            title: Text("Menu"),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            content: Container(
                              width: 600,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (_, int index) {
                                  return InkWell(
                                    onTap: () {
                                      onMenuSelection(menuItems[index].id);
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      decoration:
                                          selectedMenuId == menuItems[index].id
                                              ? BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: Theme.of(context)
                                                          .primaryColor))
                                              : null,
                                      child: ListTile(
                                        leading: index == 0
                                            ? Icon(
                                                Icons.format_list_bulleted,
                                                color: Colors.black,
                                                size: 20,
                                              )
                                            : Container(
                                                child: Text(
                                                  "${menuItems[index].items.length}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                padding: EdgeInsets.all(8),
                                              ),
                                        title: Text(
                                          menuItems[index].title,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: menuItems.length,
                              ),
                            ),
                          );
                        });
                  },
                  child: _menuBox(context),
                )
              ],
            ),
            Divider(height: 1),
          ],
        ));
  }

  Widget _menuBox(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      margin: EdgeInsets.symmetric(
        vertical: 12,
      ),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.format_list_bulleted,
            size: 16,
            color: Theme.of(context).canvasColor,
          ),
          SizedBox(height: 4),
          Text(
            "Menu",
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.white),
          ),
        ],
      )),
    );
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
