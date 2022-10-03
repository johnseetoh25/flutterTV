import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'bar_chart_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<BarChartModel> data = [
    BarChartModel(
      year: "2014",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
    ),
    BarChartModel(
      year: "2015",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      year: "2016",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      year: "2017",
      financial: 450,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      year: "2018",
      financial: 630,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      year: "2019",
      financial: 950,
      color: charts.ColorUtil.fromDartColor(Colors.pink),
    ),
    BarChartModel(
      year: "2020",
      financial: 400,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Billboard FGV'),),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GridView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 16/9,
          ),
          children: <Widget>[
            InkWell(
              onTap: () {},
              focusColor: Colors.amber.shade200,
              autofocus: true,
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Card(
                color: Colors.amber.shade200,
                elevation: 0,
                child: Container(
                  padding: EdgeInsets.all(14),
                  child: Column(
                    children: [
                      Text('Production Planning'),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Table(
                          columnWidths: {
                            0: FlexColumnWidth(3),
                            1: FlexColumnWidth(1),
                            2: FlexColumnWidth(3),
                          },
                          defaultColumnWidth: FixedColumnWidth(100.0),
                          //border: TableBorder.all( color: Colors.black, style: BorderStyle.solid ),
                          children: [
                            TableRow( children: [
                              Column(children:[Text('Production 01')]),
                              Column(children:[Text('100mt')]),
                              Column(children:[Text('Tank 01 - Tank 03')]),
                            ]),
                            TableRow( children: [
                              Column(children:[Text('Production 02')]),
                              Column(children:[Text('100mt')]),
                              Column(children:[Text('Tank 06 - Tank 03')]),
                            ]),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              focusColor: Colors.blue.shade300,
              autofocus: true,
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Card(
                color: Colors.blue.shade300,
                elevation: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Text('Plant Production'),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Table(
                            columnWidths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(1),
                              2: FlexColumnWidth(1),
                              3: FlexColumnWidth(1),
                            },
                            defaultColumnWidth: FixedColumnWidth(120.0),
                            border: TableBorder.all( color: Colors.black, style: BorderStyle.solid ),
                            children:[
                              TableRow( children: [
                                Column(children:[Text('Plant')]),
                                Column(children:[Text('Actual')]),
                                Column(children:[Text('Target')]),
                                Column(children:[Text('Capacity')]),
                              ]),
                              TableRow( children: [
                                Column(children:[Text('A')]),
                                Column(children:[Text('100')]),
                                Column(children:[Text('300')]),
                                Column(children:[Text('30%')]),
                              ]),
                              TableRow( children: [
                                Column(children:[Text('B')]),
                                Column(children:[Text('100')]),
                                Column(children:[Text('300')]),
                                Column(children:[Text('30%')]),
                              ]),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              focusColor: Colors.greenAccent.shade200,
              autofocus: true,
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Card(
                color: Colors.greenAccent.shade200,
                elevation: 0,
                child: Container(
                  padding: EdgeInsets.all(14),
                  child: Column(
                    children: [
                      Text('Weekly Production Performance'),
                      SizedBox(
                        height: 200.0,
                        child: charts.BarChart(
                          series,
                          animate: true,
                          vertical: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              focusColor: Colors.red.shade200,
              autofocus: true,
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Card(
                color: Colors.red.shade200,
                elevation: 0,
                child: Container(
                  padding: EdgeInsets.all(14),
                  child: Column(
                    children: [
                      Text('Other Information'),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );

  }
}









