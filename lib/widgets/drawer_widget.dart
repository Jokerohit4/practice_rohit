import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:practice_rohit/widgets/small_box_graphs.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          SmallBoxGraphs( company: "Reliance",data: [
          FlSpot(0, 0),
          FlSpot(1, 2),
          FlSpot(2, 3.5),
          FlSpot(3, 1.5),
          FlSpot(4,3),
          FlSpot(5, 3),
          FlSpot(6, 1),
        ],
          color: Colors.red),
          SmallBoxGraphs( company: "Tata Steel",data: [
            FlSpot(0, 0),
            FlSpot(1, 2),
            FlSpot(2, 2),
            FlSpot(3, 1),
            FlSpot(4,2),
            FlSpot(5, 3),
            FlSpot(6, 4),
          ],
              color: Colors.green),
          SmallBoxGraphs( company: "Adani Greens",data: [
            FlSpot(0, 0),
            FlSpot(1, 2),
            FlSpot(2, 1),
            FlSpot(3, 3),
            FlSpot(4,4),
            FlSpot(5, 5),
            FlSpot(6, 6),
          ],
              color: Colors.yellow),
        ],
      ),
    );
  }
}
