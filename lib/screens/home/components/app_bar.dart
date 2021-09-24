import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar homeAppBar(BuildContext context) {
  var ksecondaryColor;
  var kPrimaryColor;
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/circle.svg"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Hi Alem have ",
            style: TextStyle(color: kPrimaryColor),
          ),
          TextSpan(
            text: "Upaid Depait",
            style: TextStyle(color: ksecondaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      Icon(Icons.turned_in_not_outlined),
    ],
  );
}
