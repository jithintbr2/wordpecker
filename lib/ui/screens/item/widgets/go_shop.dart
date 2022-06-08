import 'package:flutter/material.dart';

class GoToShopAddon extends StatelessWidget {
  final int shopId;
  const GoToShopAddon({Key? key, required this.shopId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 10),
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Buy more items from this shop.',
                  style: TextStyle(color: Theme.of(context).canvasColor)),
              // Row(
              //   children: <Widget>[
              //     InkWell(
              //       onTap: () => Navigator.of(context).pushNamed('/shopDetail',
              //           arguments: {"shopId": shopId}),
              //       child: Text(
              //         "Go to shop",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ),
              //     Icon(
              //       Icons.play_arrow,
              //       size: 16,
              //       color: Colors.white,
              //     )
              //   ],
              // ),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Theme.of(context).canvasColor, height: 0)
        ],
      ),
    );
  }
}
