import 'package:flutter/material.dart';

class HomeSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final TextEditingController controller;
  final bool showCancel;
  final bool isGridView;
  final void Function() onViewChange;
  const HomeSearchAppBar({
    required this.title,
    required this.controller,
    required this.showCancel,
    required this.isGridView,
    required this.onViewChange,
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 55);

  @override
  Widget build(BuildContext context) {
    final _focusNode = FocusNode();

    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
            icon:
                Icon(isGridView ? Icons.list : Icons.apps, color: Colors.white),
            onPressed: onViewChange)
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
              autofocus: true,
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Search",
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
