


import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key, this.data});
final List<FlSpot>? data;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: data!.map((point) => FlSpot(point.x, point.y)).toList(),
            isCurved: true,
            dotData: FlDotData(
              show: false,
            ),
            color: Colors.green,
          ),
        ],
        titlesData: FlTitlesData(
          show: false,
        ),
        gridData: FlGridData(
          show: false,
        ),
        borderData: FlBorderData(
          show: false,
        ),
      ),
    );
  }
}
