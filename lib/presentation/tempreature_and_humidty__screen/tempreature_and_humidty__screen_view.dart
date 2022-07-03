import 'package:charts/presentation/models/temp.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class TemperatureAndHumidty extends StatefulWidget {
  const TemperatureAndHumidty({Key? key}) : super(key: key);

  @override
  State<TemperatureAndHumidty> createState() => _TemperatureAndHumidtyState();
}

class _TemperatureAndHumidtyState extends State<TemperatureAndHumidty> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  @override
  void initState() {
    super.initState();
  }

  _buildTempHumid() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Column(
                children: [
                  ...tempList!.map((e) => Text(e.toString())).toList(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: Column(
                children: [
                  ...humidtyList.map((e) => Text(e.toString())).toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildCharts(context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF010429),
        ),
        child: LineChart(
          LineChartData(minX: 0, maxX: 13, minY: 0, maxY: 13, lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 3),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperature And Humidty'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildTempHumid(),
          _buildCharts(context),
        ],
      ),
    );
  }
}
