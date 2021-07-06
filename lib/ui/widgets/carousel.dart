import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:woodle/core/models/carousel/carousel_model.dart';
import 'package:woodle/core/settings/assets.dart';

class Carousel extends StatelessWidget {
  final List<CarouselModel> items;
  final double? viewportFraction;
  const Carousel({required this.items, this.viewportFraction, Key? key})
      : super(key: key);

  CarouselOptions _options() => CarouselOptions(
      aspectRatio: items[0].aspectRatio ?? 6.4,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 5),
      enlargeCenterPage: true,
      viewportFraction: viewportFraction ?? 0.8,
      pauseAutoPlayOnTouch: true);

  Widget _buildItem(CarouselModel item) => InkWell(
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.all(0),
          child: CachedNetworkImage(
            imageUrl: item.imageUrl,
            placeholder: (_, __) => Image.asset(Assets.homeDrawerBackground),
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
