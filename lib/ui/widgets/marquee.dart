import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueeWidget extends StatelessWidget {
  final String text;

  MarqueeWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    if (text.isEmpty) return SizedBox();
    return Container(
        margin: EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(

          // border: Border.symmetric(
          //     horizontal: BorderSide(width: 2, color: Colors.grey)),
        ),
        height: 20,
        child: Marquee(
          text: text,
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.center,
          blankSpace: 20.0,
          startPadding: 16.0,
          accelerationCurve: Curves.linear,
          decelerationCurve: Curves.easeOut,
        ));
  }
}
