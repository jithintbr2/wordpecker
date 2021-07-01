import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:woodle/core/settings/config.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showLocation;
  final String? location;
  final void Function()? onTap;
  const HomeAppBar(
      {Key? key, required this.showLocation, this.location, this.onTap})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 55);

  @override
  Widget build(BuildContext context) {
    print('.....');
    print(location);
    return AppBar(
      title: showLocation
          ? InkWell(
              onTap: onTap,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Location",
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          location ?? 'Select Location',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(Icons.edit, size: 12),
                      )
                    ],
                  )
                ],
              ),
            )
          : Text(Config.applicationName),
      actions: [
        IconButton(
            onPressed: () async {
              if (await canLaunch("tel:${Config.contactNumber}"))
                await launch("tel:${Config.contactNumber}");
            },
            icon: Icon(Icons.call)),
        IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart'),
            icon: Icon(Icons.shopping_cart))
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

  void onSearch() {
    return null;
  }
}