import 'package:chartz/presentation/models/line_titles_for_currentr.dart';
import 'package:chartz/presentation/models/line_titles_for_power.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../models/temp.dart';

class PowerView extends StatefulWidget {
  const PowerView({Key? key}) : super(key: key);

  @override
  State<PowerView> createState() => _PowerViewState();
}

class _PowerViewState extends State<PowerView> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  void initState() {
    super.initState();
  }

  _buildPower() {
    return Expanded(
      child: Container(
        color: const Color(0xFF010429),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1 / 3,
            mainAxisExtent: 70,
          ),
          shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          children: [
            ...powerList!
                .map(
                  (e) => Container(
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.blue,
                        ),
                      ],
                      color: const Color(0xFF010429),
                      border: Border.all(
                        color: const Color.fromARGB(255, 26, 34, 160),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        e.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
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
          LineChartData(
            minX: 0,
            maxX: 9,
            minY: 0,
            maxY: 9,
            titlesData: LinePowerTitles.getTitleData(),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: const Color(0xff37434d),
                  strokeWidth: 1,
                );
              },
              drawVerticalLine: true,
              getDrawingVerticalLine: (value) {
                return FlLine(
                  color: const Color(0xff37434d),
                  strokeWidth: 1,
                );
              },
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(
                color: const Color(0xff37434d),
                width: 1,
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 0),
                  FlSpot(finalVoltList[0], finalPowerList[0]),
                  FlSpot(finalVoltList[1], finalPowerList[1]),
                  FlSpot(finalVoltList[2], finalPowerList[2]),
                  FlSpot(finalVoltList[3], finalPowerList[3]),
                  FlSpot(finalVoltList[4], finalPowerList[4]),
                  FlSpot(finalVoltList[5], finalPowerList[5]),
                  FlSpot(finalVoltList[6], finalPowerList[6]),
                  FlSpot(finalVoltList[7], finalPowerList[7]),
                  FlSpot(finalVoltList[8], finalPowerList[8]),
                  FlSpot(finalVoltList[9], finalPowerList[9]),

                  // const FlSpot(0, 3),
                ],
                isCurved: true,
                dotData: FlDotData(show: true),
                // belowBarData: BarAreaData(
                //   show: true,
                //   color: Colors.blueAccent.withOpacity(.3),
                // ),
                //gradient: LinearGradient(colors: gradientColors),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF010429),
        title: const Text('Power'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildPower(),
          _buildCharts(context),
        ],
      ),
    );
  }
}
