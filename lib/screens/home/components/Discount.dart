import 'package:flutter/material.dart';
import 'package:tourism/screens/home/components/discount_card.dart';

class Discount extends StatelessWidget {
  const Discount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          DiscountList(
            svgSrc: "assets/image/mon.png",
            title: "Salary",
            seq: "Montly",
            timeName: "3 Dayleft",
            earning: "7 Earining",
            money: "ETB 2000",
            member: "26Members",
          ),
          DiscountList(
            svgSrc: "assets/image/mon.png",
            title: "Rent Contarat",
            seq: "Weekly",
            timeName: "3 Dayleft",
            earning: "10 Cycles",
            money: "ETB 2000",
            member: "26Members",
          ),
          DiscountList(
            svgSrc: "assets/image/mon.png",
            title: "Travel Stipend",
            seq: "Weekly",
            timeName: "3 Dayleft",
            earning: "10 Cycles",
            money: "ETB 2000",
            member: "26Members",
          ),
          DiscountList(
            svgSrc: "assets/image/mon.png",
            title: "Equb",
            seq: "Weekly",
            timeName: "3 Dayleft",
            earning: "10 Cycles",
            money: "ETB 2000",
            member: "26Members",
          ),
          DiscountList(
            svgSrc: "assets/image/mon.png",
            title: "Profit Shares",
            seq: "Weekly",
            timeName: "3 Dayleft",
            earning: "10 Cycles",
            money: "ETB 2000",
            member: "26Members",
          ),
          DiscountList(
            svgSrc: "assets/image/mon.png",
            title: "Freelance",
            seq: "Weekly",
            timeName: "3 Dayleft",
            earning: "10 Cycles",
            money: "ETB 2000",
            member: "26Members",
          ),
        ],
      ),
    );
  }
}
