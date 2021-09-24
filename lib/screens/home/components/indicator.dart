import 'dart:ui';

import 'package:flutter/material.dart';

class IndicatorWidget extends StatelessWidget {
  // const IndicatorWidget({ Key? key }) : super(key: key);
  final Color color;
  final String text;
  // final String title;
  final bool isSquare = false;
  // final double size = 16;
  IndicatorWidget({required this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        )
      ],
    );
  }
}
