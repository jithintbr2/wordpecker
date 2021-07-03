import 'package:flutter/material.dart';

class CategoryItemsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final TextEditingController controller;
  final bool showCancel;
  const CategoryItemsAppBar(
      {required this.title,
      required this.controller,
      required this.showCancel,
      Key? key})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 55);

  @override
  Widget build(BuildContext context) {
    final _focusNode = FocusNode();

    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
            icon: Icon(Icons.list, color: Colors.white), onPressed: () => null)
      ],
      bottom: PreferredSize(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: TextField(
              focusNode: _focusNode,
              controller: controller,
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Search in $title",
                  filled: true,
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.grid_view, color: Colors.grey),
                  suffixIcon: showCancel
                      ? IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            _focusNode.unfocus();
                            controller.clear();
                          },
                        )
                      : Icon(Icons.search))),
        ),
        preferredSize: Size.fromHeight(55),
      ),
    );
  }
}
