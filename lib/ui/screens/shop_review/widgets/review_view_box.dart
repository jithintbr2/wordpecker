import 'package:flutter/material.dart';
import 'package:woodle/core/models/shop_review/shop_review_model.dart';

class ReviewViewBox extends StatelessWidget {
  final ShopReviewDataModel data;
  const ReviewViewBox({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          dense: true,
          leading: SizedBox(height: 32, width: 32, child: Icon(Icons.person)),
          title: Text(data.userName),
          subtitle: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                  5,
                  (i) => Icon(
                        Icons.star,
                        color: i < (data.rating as int)
                            ? Colors.yellow[800]
                            : Colors.grey.withOpacity(0.5),
                        size: 14,
                      )).toList()),
          trailing: Text(data.date,
              style: TextStyle(fontSize: 12, color: Colors.grey[600])),
        ),
        Text(data.review,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 12, color: Colors.grey[600]))
      ],
    );
  }
}
