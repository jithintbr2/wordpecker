import 'package:flutter/material.dart';

///ItemPage represents item details page aka. product page.
///This page will contain the product details.
class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(); //Carousel builder #Check pub readme
  }
}
