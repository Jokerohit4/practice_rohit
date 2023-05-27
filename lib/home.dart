import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:practice_rohit/widgets/drawer_widget.dart';
import 'package:practice_rohit/widgets/horizontal_box_chart.dart';
import 'package:practice_rohit/widgets/small_box_graphs.dart';
import 'package:practice_rohit/widgets/tabs_line_chart.dart';

import 'widgets/line_chart_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          const TabsLineChart(),
          const HorizontalBarChart(),
          GestureDetector(
           onTap: () => _openBottomSheet(context),
            child: const SmallBoxGraphs(company: "Zomato", data: [
              FlSpot(0, 0),
              FlSpot(1, 2),
              FlSpot(2, 2),
              FlSpot(3, 1),
              FlSpot(4,2),
              FlSpot(5, 3),
              FlSpot(6, 4),
            ], color: Colors.red),
          )
        ],
      ),
    );
  }
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 800,
          color: Colors.white,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10,
              ),
              const SmallBoxGraphs( company: "Reliance",data: [
                FlSpot(0, 0),
                FlSpot(1, 2),
                FlSpot(2, 3.5),
                FlSpot(3, 1.5),
                FlSpot(4,3),
                FlSpot(5, 3),
                FlSpot(6, 1),
              ],
                  color: Colors.red),
              const SmallBoxGraphs( company: "Tata Steel",data: [
                FlSpot(0, 0),
                FlSpot(1, 2),
                FlSpot(2, 2),
                FlSpot(3, 1),
                FlSpot(4,2),
                FlSpot(5, 3),
                FlSpot(6, 4),
              ],
                  color: Colors.green),
              const SmallBoxGraphs( company: "Adani Greens",data: [
                FlSpot(0, 0),
                FlSpot(1, 2),
                FlSpot(2, 1),
                FlSpot(3, 3),
                FlSpot(4,4),
                FlSpot(5, 5),
                FlSpot(6, 6),
              ],
                  color: Colors.yellow),
              const SizedBox(height: 16),
              ElevatedButton(
                child: const Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
