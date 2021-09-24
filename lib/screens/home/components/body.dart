import 'package:flutter/material.dart';
import 'package:tourism/screens/home/components/Discount.dart';
import 'package:tourism/screens/home/components/Piecharts.dart';
import 'package:tourism/screens/home/components/butt_de.dart';
import 'package:tourism/screens/home/components/item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BigChart(),
        ItemList(),
        ButtonCont(),
        Discount(),
      ],
    );
  }
}
