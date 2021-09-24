import 'package:flutter/material.dart';
import 'package:tourism/constants.dart';

class DiscountList extends StatelessWidget {
  final String title, timeName, svgSrc, seq, earning, money, member;
  const DiscountList({
    Key? key,
    this.title,
    this.timeName,
    this.svgSrc,
    this.earning,
    this.money,
    this.member,
    this.seq,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 20,
              color: Colors.white.withOpacity(0.32),
            )
          ]),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.topRight,
              // margin: EdgeInsets.only(top: 0),
              // padding: EdgeInsets.all(25),
              width: 42,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.13),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(svgSrc))),
            ),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(Icons.watch_later, color: ksecondaryColor),
                    SizedBox(width: 15),
                    Text(
                      seq,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.update, color: ksecondaryColor),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      earning,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.paid, color: ksecondaryColor),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      money,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.group, color: ksecondaryColor),
                    SizedBox(width: 5),
                    Text(
                      member,
                      style: TextStyle(fontSize: 12, color: ksecondaryColor),
                    ),
                    Icon(Icons.turned_in_not_outlined, color: ksecondaryColor),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
