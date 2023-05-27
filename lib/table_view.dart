import 'package:flutter/material.dart';

class TableView extends StatelessWidget {
  const TableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> jsonData = [
      {
        "id": "0001",
        "type": "donut",
        "name": "Cake",
        "ppu": 0.55,
        "batters": {
          "batter": [
            {"id": "1001", "type": "Regular"},
            {"id": "1002", "type": "Chocolate"},
            {"id": "1003", "type": "Blueberry"}
          ]
        },
        "topping": [
          {"id": "5001", "type": "None"},
          {"id": "5002", "type": "Glazed"},
          {"id": "5005", "type": "Sugar"},
          {"id": "5007", "type": "Powdered Sugar"}
        ]
      },
      {
        "id": "0002",
        "type": "donut",
        "name": "Cake",
        "ppu": 0.55,
        "batters": {
          "batter": [
            {"id": "1001", "type": "Blueberry"}
          ]
        },
        "topping": [
          {"id": "5001", "type": "None"},
          {"id": "5002", "type": "Glazed"}
        ]
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIRSTOCK's TABLE VIEW"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Type')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('PPU')),
                DataColumn(label: Text('Batter Type')),
                DataColumn(label: Text('Topping Type')),
              ],
              rows: jsonData.expand((item) {
                final id = item["id"];
                final type = item["type"];
                final name = item["name"];
                final ppu = item["ppu"];
                final batterList = item["batters"]["batter"] as List<dynamic>;
                var toppings = item['topping']
                    .map((topping) => topping['type'])
                    .join(", ");

                return batterList.map((batter) {
                  final batterType = batter["type"];
                  return DataRow(cells: [
                    DataCell(Text(id)),
                    DataCell(Text(type)),
                    DataCell(Text(name)),
                    DataCell(Text(ppu.toString())),
                    DataCell(Text(batterType)),
                    DataCell(Text(toppings)
                    ),
                  ]);
                }).toList();
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
