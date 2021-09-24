import 'package:flutter/material.dart';

class ButtonCont extends StatefulWidget {
  @override
  _ButtonContState createState() => _ButtonContState();
}

class _ButtonContState extends State<ButtonCont> {
  List<String> button = ['MoneyCollection', 'Money Due'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: button.length,
            itemBuilder: (context, index) => buildbutton(index)),
      ),
    );
  }

  Widget buildbutton(int index) => GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                button[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                // color:selectedIndex == index ? Colors.green
              ),
              Container(
                height: 2,
                width: 30,
                color:
                    selectedIndex == index ? Colors.green : Colors.transparent,
              )
            ],
          ),
        ),
      );
}
