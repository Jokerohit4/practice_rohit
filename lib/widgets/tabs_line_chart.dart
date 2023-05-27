import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:practice_rohit/widgets/line_chart_widget.dart';



class TabsLineChart extends StatelessWidget {
  const TabsLineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3, // Number of tabs
      child:  Column(
        children: [
          Container(
            color: Color(0xfffeef1f9),
            height: MediaQuery.of(context).size.height/3,
            child: TabBarView(
                children: [
                  LineChartWidget(
                    data: [
                      FlSpot(0, 0),
                      FlSpot(1, 2),
                      FlSpot(2, 3.5),
                      FlSpot(3, 1.5),
                      FlSpot(4, 3),
                      FlSpot(5, 3),
                      FlSpot(6, 1),
                    ],
                  ),
                  LineChartWidget(
                    data: [
                      FlSpot(0, 1),
                      FlSpot(1, 3),
                      FlSpot(2, 2),
                      FlSpot(3, 4),
                      FlSpot(4, 2),
                      FlSpot(5, 1),
                      FlSpot(6, 3),
                    ],
                  ),
                  LineChartWidget(
                    data: [
                      FlSpot(0, 3),
                      FlSpot(1, 1),
                      FlSpot(2, 2.5),
                      FlSpot(3, 1),
                      FlSpot(4, 0),
                      FlSpot(5, 2),
                      FlSpot(6, 1),
                    ],
                  ),
                ],
              ),
          ),
          Material(
            color: Color(0xfffeef1f9),
            child: TabBar(
              labelColor: Colors.grey.shade900,
              indicatorColor: Colors.black,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Tab(text: 'Day'),
                Tab(text: 'Week'),
                Tab(text: 'Month'),
              ],
            ),
          ),
        ],
      ),
      );
  }
}
