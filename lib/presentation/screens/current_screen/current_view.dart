import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../models/line_titles_for_currentr.dart';
import '../../models/line_titles_for_temp_and_humidty.dart';
import '../../models/temp.dart';

class CurrentView extends StatefulWidget {
  const CurrentView({Key? key}) : super(key: key);

  @override
  State<CurrentView> createState() => _CurrentViewState();
}

class _CurrentViewState extends State<CurrentView> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  void initState() {
    super.initState();
  }

  _buildCurrent() {
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
            ...currentList!
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
            const Center(
              child: Text(
                'Voltage',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...voltageList!
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
            titlesData: LineCurrentTitles.getTitleData(),
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
                  FlSpot(finalVoltList[0], finalCurrentList[0]),
                  FlSpot(finalVoltList[1], finalCurrentList[1]),
                  FlSpot(finalVoltList[2], finalCurrentList[2]),
                  FlSpot(finalVoltList[3], finalCurrentList[3]),
                  FlSpot(finalVoltList[4], finalCurrentList[4]),
                  FlSpot(finalVoltList[5], finalCurrentList[5]),
                  FlSpot(finalVoltList[6], finalCurrentList[6]),
                  FlSpot(finalVoltList[7], finalCurrentList[7]),
                  FlSpot(finalVoltList[8], finalCurrentList[8]),
                  FlSpot(finalVoltList[9], finalCurrentList[9]),

                  // const FlSpot(0, 3),
                ],
                isCurved: true,
                dotData: FlDotData(show: false),
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
        title: const Text('Current'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildCurrent(),
          _buildCharts(context),
        ],
      ),
    );
  }
}
