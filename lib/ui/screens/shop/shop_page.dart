import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  Widget _buildPage() {
    return Stack(
      fit: StackFit.loose,
      children: [
        CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          slivers: [],
        )
      ],
    );
  }
}
