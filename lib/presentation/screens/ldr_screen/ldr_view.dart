
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../models/line_charts_ldr.dart';
import '../../models/temp.dart';

class LdrView extends StatefulWidget {
  const LdrView({Key? key}) : super(key: key);

  @override
  State<LdrView> createState() => _LdrViewState();
}

class _LdrViewState extends State<LdrView> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  void initState() {
    super.initState();
  }

  _buildLdr() {
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
            const SizedBox(
              // height: 20,
              width: 20,
              child: Text(
                'Left LDR',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ...leftLdrList!
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
            const SizedBox(
              width: 20,
              child: Text(
                'Right LDR',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ...rightLdrList!
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
            titlesData: LineChartsLdr.getTitleData(),
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
                  FlSpot(0, finalLefLdrList[0]),
                  FlSpot(1, finalLefLdrList[1]),
                  FlSpot(2, finalLefLdrList[2]),
                  FlSpot(3, finalLefLdrList[3]),
                  FlSpot(4, finalLefLdrList[4]),
                  FlSpot(5, finalLefLdrList[5]),
                  FlSpot(6, finalLefLdrList[6]),
                  FlSpot(7, finalLefLdrList[7]),
                  FlSpot(8, finalLefLdrList[8]),
                  FlSpot(9, finalLefLdrList[9]),

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
              LineChartBarData(
                spots: [
                  FlSpot(0, finalRightLdrList[0]),
                  FlSpot(1, finalRightLdrList[1]),
                  FlSpot(2, finalRightLdrList[2]),
                  FlSpot(3, finalRightLdrList[3]),
                  FlSpot(4, finalRightLdrList[4]),
                  FlSpot(5, finalRightLdrList[5]),
                  FlSpot(6, finalRightLdrList[6]),
                  FlSpot(7, finalRightLdrList[7]),
                  FlSpot(8, finalRightLdrList[8]),
                  FlSpot(9, finalRightLdrList[9]),
                ],
                isCurved: true,
                dotData: FlDotData(show: true),
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
        title: const Text('LDR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildLdr(),
          _buildCharts(context),
        ],
      ),
    );
  }
}
