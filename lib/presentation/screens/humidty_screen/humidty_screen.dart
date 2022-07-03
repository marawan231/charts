import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../models/line_titles_for_temp_and_humidty.dart';
import '../../models/temp.dart';

class HumidtyView extends StatefulWidget {
  const HumidtyView({Key? key}) : super(key: key);

  @override
  State<HumidtyView> createState() => _HumidtyViewState();
}

class _HumidtyViewState extends State<HumidtyView> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  void initState() {
    super.initState();
  }

  _buildHumidty() {
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
            ...humidtyList
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
            titlesData: LineTitles.getTitleData(),
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
                  FlSpot(0, finalHumidtyList[0]),
                  FlSpot(1, finalHumidtyList[1]),
                  FlSpot(2, finalHumidtyList[2]),
                  FlSpot(3, finalHumidtyList[3]),
                  FlSpot(4, finalHumidtyList[4]),
                  FlSpot(5, finalHumidtyList[5]),
                  FlSpot(6, finalHumidtyList[6]),
                  FlSpot(7, finalHumidtyList[7]),
                  FlSpot(8, finalHumidtyList[8]),
                  FlSpot(9, finalHumidtyList[9]),

                  // const FlSpot(0, 3),
                ],
                isCurved: true,
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.blueAccent.withOpacity(.3),
                ),
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
        title: const Text('Humidty'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildHumidty(),
          _buildCharts(context),
        ],
      ),
    );
  }
}
