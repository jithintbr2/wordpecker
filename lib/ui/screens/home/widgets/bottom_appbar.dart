import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  final int currenTabIndex;
  final void Function(int)? onTap;
  const HomeBottomNavigationBar(
      {Key? key, required this.currenTabIndex, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currenTabIndex,
      iconSize: 20,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.store), label: "Custom"),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "Services"),
        BottomNavigationBarItem(icon: Icon(Icons.dehaze), label: "More"),
      ],
    );
  }
}
