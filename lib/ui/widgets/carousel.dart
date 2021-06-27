import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:woodle/core/models/carousel/carousel_model.dart';

class Carousel extends StatelessWidget {
  final List<CarouselModel> items;
  final double? aspectRatio;
  const Carousel({required this.items, this.aspectRatio, Key? key})
      : super(key: key);

  CarouselOptions _options() => CarouselOptions(
      aspectRatio: aspectRatio ?? 6.4,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 5),
      enlargeCenterPage: true,
      pauseAutoPlayOnTouch: true);

  Widget _buildItem(CarouselModel item) => InkWell(
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.all(0),
          child: CachedNetworkImage(
            imageUrl: item.imageUrl,
            progressIndicatorBuilder: (context, _, downloadInfo) =>
                CircularProgressIndicator(
              value: downloadInfo.progress,
            ),
            errorWidget: (context, _, error) => Icon(Icons.error),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return SizedBox();
    return CarouselSlider.builder(
        itemCount: items.length,
        itemBuilder: (context, index, _) => _buildItem(items[index]),
        options: _options());
  }
}
