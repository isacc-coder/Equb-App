import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, amount, svgSrc;
  final Function press;
  const ItemCard({
    Key? key,
    required this.title,
    required this.shopName,
    required this.svgSrc,
    required this.press,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 10,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          //onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.10),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    svgSrc,
                    width: size.width * 0.10,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Icon(Icons.paid, color: Colors.red),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          shopName,
                          style: TextStyle(fontSize: 12, color: Colors.red),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.watch_later, color: ksecondaryColor),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          amount,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                    child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.red,
                    minimumSize: Size(130, 40),
                    side: BorderSide(color: Colors.red),
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: Text('Pay'),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
