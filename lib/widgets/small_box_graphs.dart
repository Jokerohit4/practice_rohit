import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SmallBoxGraphs extends StatelessWidget {
  const SmallBoxGraphs({Key? key, required this.company, required this.data, required this.color}) : super(key: key);
final String company;
final List<FlSpot> data;
final Color color;
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: LineChart(
            LineChartData(
              lineBarsData: [
                LineChartBarData(
                  spots: data.map((point) => FlSpot(point.x, point.y)).toList(),
                  isCurved: false,
                  //  barWidth: 3,
                  color: color,
                  dotData: FlDotData(show: false),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        color,
                        Colors.white,
                      ],
                    ),
                  ),
                ),
              ],
              titlesData: FlTitlesData(
                show: false, // Hide numbers on the axes
              ),
              gridData: FlGridData(
                show: false,
              ),
              borderData: FlBorderData(
                show: false,
              ),
            ),
          ),
        ),
        Text(company,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),),
      ],
    );
  }
}
