import 'package:flutter/material.dart';
import 'package:tourism/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/image/Dashen2.png",
            title: "Dashen Bank",
            shopName: "ETB 2000",
            amount: "3 Days left",
            press: () {},
          ),
          ItemCard(
            svgSrc: "assets/image/Awash.png",
            title: "Abyssinya Bank",
            shopName: "ETB 2000",
            amount: "3 Days left",
            press: () {},
          ),
          ItemCard(
            svgSrc: "assets/image/Enat.png",
            title: "Enat Bank",
            shopName: "ETB 2000",
            amount: "3 Days left",
            press: () {},
          ),
          ItemCard(
            svgSrc: "assets/image/Nib.png",
            title: "Nib Bank",
            shopName: "ETB 2000",
            amount: "3 Days left",
            press: () {},
          ),
          ItemCard(
            svgSrc: "assets/image/Awash.png",
            title: "Awash Bank",
            shopName: "ETB 2000",
            amount: "3 Days left",
            press: () {},
          ),
        ],
      ),
    );
  }
}
