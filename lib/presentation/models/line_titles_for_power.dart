import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class LinePowerTitles {
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
                    '0.0',
                    style: titlesTextstyle,
                  );
                case 1:
                  return const Text(
                    '0.5',
                    style: titlesTextstyle,
                  );
                case 2:
                  return const Text(
                    '1.0',
                    style: titlesTextstyle,
                  );
                case 3:
                  return const Text(
                    '1.5',
                    style: titlesTextstyle,
                  );
                case 4:
                  return const Text(
                    '2.0',
                    style: titlesTextstyle,
                  );
                case 5:
                  return const Text(
                    '2.5',
                    style: titlesTextstyle,
                  );
                case 6:
                  return const Text(
                    '3.0',
                    style: titlesTextstyle,
                  );
                case 7:
                  return const Text(
                    '3.5',
                    style: titlesTextstyle,
                  );
                case 8:
                  return const Text(
                    '4.0',
                    style: titlesTextstyle,
                  );
                case 9:
                  return const Text(
                    '4.5',
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
