import 'package:flutter/material.dart';
import 'package:woodle/core/models/category/category_model.dart';
import 'package:woodle/ui/widgets/category.dart';

class CategoryViewAll extends StatelessWidget {
  final String title;
  final List<CategoryModel> items;
  final void Function(int) onTap;
  const CategoryViewAll(
      {Key? key, required this.title, required this.items, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('All $title'),
        ),
        body: Category(items: items, onTap: onTap, limit: items.length));
  }
}
