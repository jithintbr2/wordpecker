import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';
import 'package:woodle/core/models/user/user_model.dart';
import 'package:woodle/core/services/cart.dart';
import 'package:woodle/core/settings/config.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final UserModel? user;
  final bool showLocation;
  final String? location;
  final void Function()? onTap;
  final void Function()? onSearch;
  final void Function()? onCall;
  final CartService service;
  final int contactNumber;
  const HomeAppBar({
    Key? key,
    required this.showLocation,
    this.location,
    this.onTap,
    this.onSearch,
    required this.contactNumber,
    required this.user,
    required this.service,
    required this.onCall,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(Config.applicationName),
      actions: [
        IconButton(onPressed: onCall, icon: Icon(Icons.call)),
        StreamBuilder(
            stream: service.controller,
            initialData: service.initialValue(),
            builder: (context, AsyncSnapshot<List<ItemVarientModel>> snap) {
              return IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/cart',
                      arguments: {'user': user}),
                  icon: Badge(
                      badgeContent: Text(
                          snap.hasData ? snap.data!.length.toString() : "0",
                          style: TextStyle(
                              color: Theme.of(context).canvasColor,
                              fontSize: 10)),
                      showBadge: snap.hasData && snap.data!.length > 0,
                      badgeColor: Theme.of(context).errorColor,
                      child: Icon(Icons.shopping_cart)));
            }),
      ],
      bottom: PreferredSize(
        child: InkWell(
          onTap: onSearch,
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Row(
              children: [
                Icon(
                  Icons.grid_view,
                  color: Colors.grey,
                ),
                VerticalDivider(
                  color: Colors.grey,
                ),
                Expanded(
                    child: Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                )),
                SizedBox(width: 20),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(55),
      ),
    );
  }
}
