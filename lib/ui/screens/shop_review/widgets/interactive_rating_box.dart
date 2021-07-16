import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InteractiveRatingBox extends HookWidget {
  final void Function(double ratingValue, String? ratingText) onAdd;
  const InteractiveRatingBox({
    Key? key,
    required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _ratingValue = useState(0.0);
    final _showReviewBox = useState(false);
    final _reviewController = useTextEditingController();
    final _spacing = (MediaQuery.of(context).size.width - 300) / 3.5;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Rate this app',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      Text(
        'Tell others what you think',
        style: Theme.of(context).textTheme.caption,
      ),
      RatingBar.builder(
        initialRating: 0,
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
      ElevatedButton(
          onPressed: _ratingValue.value > 0
              ? () => onAdd(_ratingValue.value, _reviewController.text)
              : null,
          child: Text('Submit Review'))
    ]);
  }
}
