import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:woodle/core/models/shop_review/shop_review_model.dart';

class InteractiveRatingBox extends HookWidget {
  final void Function(double ratingValue, String? ratingText) onAdd;
  final ShopReviewDataModel? userReview;
  final void Function(int ratingId, double ratingValue, String? ratingText)
      onEdit;
  const InteractiveRatingBox({
    Key? key,
    required this.onAdd,
    required this.onEdit,
    this.userReview,
  }) : super(key: key);

  Widget _buildRatingBox(
      BuildContext context,
      ValueNotifier<double> _ratingValue,
      ValueNotifier<bool> _showReviewBox,
      TextEditingController _reviewController,
      ValueNotifier<bool> _showRatedBox) {
    final _spacing = (MediaQuery.of(context).size.width - 300) / 3.5;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Rate this Shop',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      Text(
        'Tell others what you think',
        style: Theme.of(context).textTheme.caption,
      ),
      RatingBar.builder(
        initialRating: userReview != null ? _ratingValue.value : 0,
        minRating: 1,
        itemCount: 5,
        itemSize: 30,
        itemPadding: EdgeInsets.symmetric(horizontal: _spacing, vertical: 20),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
        ),
        onRatingUpdate: (rating) => _ratingValue.value = rating,
      ),
      InkWell(
        onTap: () => _showReviewBox.value = !_showReviewBox.value,
        child: Text(
          'Write a review',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Theme.of(context).primaryColor),
        ),
      ),
      Visibility(
          visible: _showReviewBox.value,
          child: TextField(
              controller: _reviewController,
              textCapitalization: TextCapitalization.sentences,
              keyboardType: TextInputType.multiline,
              maxLines: 2,
              minLines: 2,
              decoration: InputDecoration(
                  isDense: true, border: OutlineInputBorder()))),
      SizedBox(height: 20),
      userReview != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: _ratingValue.value > 0
                        ? () => onEdit(userReview!.reviewId, _ratingValue.value,
                            _reviewController.text)
                        : null,
                    child: Text('Submit Review')),
                ElevatedButton(
                    onPressed: () => _showRatedBox.value = true,
                    child: Text('Cancel'))
              ],
            )
          : ElevatedButton(
              onPressed: _ratingValue.value > 0
                  ? () => onAdd(_ratingValue.value, _reviewController.text)
                  : null,
              child: Text('Submit Review'))
    ]);
  }

  Widget _buildRatedBox(
      BuildContext context,
      ValueNotifier<double> _ratingValue,
      TextEditingController _reviewController,
      ValueNotifier<bool> _showRatedBox) {
    final _spacing = (MediaQuery.of(context).size.width - 300) / 3.5;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'You have Rated this Shop',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          IconButton(
              onPressed: () {
                print('here');
                _showRatedBox.value = false;
              },
              icon: Icon(
                Icons.edit,
                color: Colors.red,
              ))
        ],
      ),
      RatingBar.builder(
        initialRating: _ratingValue.value,
        minRating: 1,
        itemCount: 5,
        itemSize: 30,
        itemPadding: EdgeInsets.symmetric(horizontal: _spacing, vertical: 20),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
        ),
        onRatingUpdate: (rating) => {},
      ),
      Visibility(
          visible: _reviewController.text.isNotEmpty,
          child: TextField(
              controller: _reviewController,
              textCapitalization: TextCapitalization.sentences,
              keyboardType: TextInputType.multiline,
              maxLines: 2,
              minLines: 2,
              decoration: InputDecoration(
                  isDense: true, border: OutlineInputBorder()))),
      SizedBox(height: 20),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final _ratingValue = useState(0.0);
    final _showReviewBox = useState(false);
    final _reviewController = useTextEditingController();
    final _showRatedBox = useState(userReview != null ? true : false);

    if (userReview != null) {
      _ratingValue.value = userReview!.rating + 0.0;
      _showReviewBox.value = true;
      _reviewController.text = userReview!.review;
    }

    print(_showRatedBox.value);

    return _showRatedBox.value
        ? _buildRatedBox(
            context, _ratingValue, _reviewController, _showRatedBox)
        : _buildRatingBox(context, _ratingValue, _showReviewBox,
            _reviewController, _showRatedBox);
  }
}
