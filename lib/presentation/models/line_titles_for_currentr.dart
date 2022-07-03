import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class LineCurrentTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 23,
            getTitlesWidget: (value, titleMeta) {
              switch (value.toInt()) {
                case 0:
                  return const Text(
                    '0',
                    style: titlesTextstyle,
                  );
                case 1:
                  return const Text(
                    '2',
                    style: titlesTextstyle,
                  );
                case 2:
                  return const Text(
                    '4',
                    style: titlesTextstyle,
                  );
                case 3:
                  return const Text(
                    '6',
                    style: titlesTextstyle,
                  );
                case 4:
                  return const Text(
                    '8',
                    style: titlesTextstyle,
                  );
                case 5:
                  return const Text(
                    '10',
                    style: titlesTextstyle,
                  );
                case 6:
                  return const Text(
                    '12',
                    style: titlesTextstyle,
                  );
                case 7:
                  return const Text(
                    '14',
                    style: titlesTextstyle,
                  );
                case 8:
                  return const Text(
                    '16',
                    style: titlesTextstyle,
                  );
                case 9:
                  return const Text(
                    '18',
                    style: titlesTextstyle,
                  );
              }
              return const Text(
                'data',
                style: titlesTextstyle,
              );
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 50,
            getTitlesWidget: (value, titleMeta) {
              switch (value.toInt()) {
                case 0:
                  return const Text(
                    '0.00',
                    style: titlesTextstyle,
                  );
                case 1:
                  return const Text(
                    '0.05',
                    style: titlesTextstyle,
                  );
                case 2:
                  return const Text(
                    '0.10',
                    style: titlesTextstyle,
                  );
                case 3:
                  return const Text(
                    '0.15',
                    style: titlesTextstyle,
                  );
                case 4:
                  return const Text(
                    '0.20',
                    style: titlesTextstyle,
                  );
                case 5:
                  return const Text(
                    '0.25',
                    style: titlesTextstyle,
                  );
                case 6:
                  return const Text(
                    '0.30',
                    style: titlesTextstyle,
                  );
                case 7:
                  return const Text(
                    '0.35',
                    style: titlesTextstyle,
                  );
                case 8:
                  return const Text(
                    '0.40',
                    style: titlesTextstyle,
                  );
                case 9:
                  return const Text(
                    '0.45',
                    style: titlesTextstyle,
                  );
              }
              return const Text(
                'data',
                style: titlesTextstyle,
              );
            },
          ),
        ),
      );
}

const titlesTextstyle = TextStyle(
  color: Color(0xff68737d),
  fontWeight: FontWeight.bold,
  fontSize: 16,
);
