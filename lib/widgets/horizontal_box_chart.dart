import 'package:flutter/material.dart';

class HorizontalBarChart extends StatelessWidget {
  const HorizontalBarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> chartData = [
      {
        "units0": 60.0,
        "color0": Colors.brown,
        "boxColor0":Colors.brown.withOpacity(0.5),
        "content0":"600",
        "units1": 70.0,
        "color1": Colors.orange,
        "boxColor1":Colors.orange.withOpacity(0.5),
        "content1":"700",
      },
      {
        "units0": 90.0,
        "color0": Colors.red,
        "boxColor0":Colors.red.withOpacity(0.5),
        "content0":"900",
        "units1": 50.0,
        "color1":Colors.indigo,
        "boxColor1":Colors.indigo.withOpacity(0.5),
        "content1":"500",
      },
    ];

    graphWidth(double width){
      return 100.0 - width;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height/4,
        child: ListView.builder(
            itemCount: chartData.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: 40,
                      color: chartData[index]["boxColor0"],
                      child:Container(
                        margin: EdgeInsets.only(left: graphWidth(chartData[index]["units0"])),
                        color: chartData[index]["color0"],
                        child: Center(child: Text(chartData[index]["content0"],
                          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)) ,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                      height: 40,
                      color: chartData[index]["boxColor1"],
                      child:Container(
                        margin: EdgeInsets.only(right: graphWidth(chartData[index]["units1"])),
                        color: chartData[index]["color1"],
                        child: Center(child: Text(chartData[index]["content0"],
                          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)) ,
                      ),
                    ),
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
