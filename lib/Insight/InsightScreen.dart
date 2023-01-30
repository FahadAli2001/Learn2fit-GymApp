import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class InsightScreen extends StatelessWidget {
  const InsightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<BarChartModel> data = [
      BarChartModel(
        day: "mon",
        weight: 8,
        color: charts.ColorUtil.fromDartColor(Color(0xFF47505F)),
      ),
      BarChartModel(
        day: "tue",
        weight: 10,
        color: charts.ColorUtil.fromDartColor(Colors.green),
      ),
      BarChartModel(
        day: "wed",
        weight: 10,
        color: charts.ColorUtil.fromDartColor(Color(0xFF47505F)),
      ),
      BarChartModel(
        day: "thur",
        weight: 10,
        color: charts.ColorUtil.fromDartColor(Color(0xFF47505F)),
      ),
      BarChartModel(
        day: "fri",
        weight: 10,
        color: charts.ColorUtil.fromDartColor(Color(0xFF47505F)),
      ),
      BarChartModel(
        day: "sat",
        weight: 10,
        color: charts.ColorUtil.fromDartColor(Color(0xFF47505F)),
      ),
      BarChartModel(
        day: "sun",
        weight: 10,
        color: charts.ColorUtil.fromDartColor(Color(0xFF47505F)),
      ),

    ];
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "weight",
        data: data,
        domainFn: (BarChartModel series, _) => series.day,
        measureFn: (BarChartModel series, _) => series.weight,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          Text("Weight"),
      Container(
        height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: charts.BarChart(
        series,
        //animate: true,
      ),
    ),


        ],
      ),
    );
  }
}



class BarChartModel {
  String day;
  int weight;
  final charts.Color color;

  BarChartModel({
    required this.day,
    required this.weight,
    required this.color,
  }
      );
}