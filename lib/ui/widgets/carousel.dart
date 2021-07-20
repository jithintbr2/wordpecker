import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:woodle/core/models/carousel/carousel_model.dart';
import 'package:woodle/core/settings/assets.dart';

class Carousel extends StatelessWidget {
  final List<CarouselModel> items;
  final double? viewportFraction;
  const Carousel({required this.items, this.viewportFraction, Key? key})
      : super(key: key);

  CarouselOptions _options() => CarouselOptions(
      aspectRatio: items[0].aspectRatio,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 5),
      enlargeCenterPage: true,
      viewportFraction: viewportFraction ?? 0.8,
      pauseAutoPlayOnTouch: true);

  Widget _buildItem(BuildContext context, CarouselModel item) => InkWell(
        onTap: () async {
          if (item.externalLink != null && await canLaunch(item.externalLink!))
            await launch(item.externalLink!);
          else if (item.itemId != -1)
            Navigator.of(context).pushNamed('/item',
                arguments: {'itemId': item.itemId, 'itemName': "name"});
          else if (item.shopId != -1)
            Navigator.of(context)
                .pushNamed('/shopDetail', arguments: {"shopId": item.shopId});
        },
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.all(0),
          child: CachedNetworkImage(
            imageUrl: item.imageUrl,
            placeholder: (_, __) => Image.asset(Assets.appIcon),
            errorWidget: (context, _, error) => Icon(Icons.error),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return SizedBox();
    return CarouselSlider.builder(
        itemCount: items.length,
        itemBuilder: (context, index, _) => _buildItem(context, items[index]),
        options: _options());
  }
}
