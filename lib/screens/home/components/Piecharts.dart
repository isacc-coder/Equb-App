import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tourism/screens/home/components/indicator.dart';

class BigChart extends StatefulWidget {
  // int _touchIndex = 0;
  @override
  _BigChartState createState() => _BigChartState();
}

class _BigChartState extends State<BigChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.0,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            Container(
              width: 260,
              margin: EdgeInsets.all(0),
              child: PieChart(PieChartData(
                borderData: FlBorderData(show: false),
                centerSpaceRadius: 50,
                sections: data,
                sectionsSpace: 0,

                //pieTouchData: PieTouchData(
                // touchCallback: pieTouchResponse {
                //   setState(() {
                //     if (pieTouchResponse.touchInput is FlLongPressEnd ||
                //         pieTouchResponse.touchInput is FlPanEnd) {
                //     } else {
                //       _touchIndex = pieTouchResponse.touchedSectionIndex;
                //     }
                //   });
                // }
                // )
              )),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 3,
              ),
              //padding: EdgeInsets.all(10),

              child: Column(
                children: [
                  IndicatorWidget(
                    color: Colors.blue,
                    text: 'Awash Bank',
                  ),
                  IndicatorWidget(
                    color: Colors.green,
                    text: 'Enat Bank',
                  ),
                  IndicatorWidget(
                    color: Colors.yellow,
                    text: 'Abyssinya Bank',
                  ),
                  IndicatorWidget(
                    color: Colors.red,
                    text: 'Wegagen Bank',
                  ),
                  IndicatorWidget(
                    color: Colors.red,
                    text: 'Dahen Bank',
                  ),
                  IndicatorWidget(
                    color: Colors.red,
                    text: 'CBE Bank',
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> data = [
    PieChartSectionData(title: "23", color: Colors.red),
    PieChartSectionData(title: "10", color: Colors.orange),
    PieChartSectionData(title: "24", color: Colors.cyan),
    PieChartSectionData(title: "6", color: Colors.blue),
    PieChartSectionData(title: "20", color: Colors.green),
    PieChartSectionData(title: "25", color: Colors.yellow),
  ];
}
