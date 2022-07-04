import 'package:charts/presentation/models/temp.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class LineChartsLdr {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 23,
            getTitlesWidget: (value, titleMeta) {
              switch (value.toInt()) {
                case 0:
                  return Text(
                    '${formattedTimeList![0]}',
                    style: titlesTextstyle,
                  );
                case 1:
                  return Text(
                    '${formattedTimeList![1]}',
                    style: titlesTextstyle,
                  );
                case 2:
                  return Text(
                    '${formattedTimeList![2]}',
                    style: titlesTextstyle,
                  );
                case 3:
                  return Text(
                    '${formattedTimeList![3]}',
                    style: titlesTextstyle,
                  );
                case 4:
                  return Text(
                    '${formattedTimeList![4]}',
                    style: titlesTextstyle,
                  );
                case 5:
                  return Text(
                    '${formattedTimeList![5]}',
                    style: titlesTextstyle,
                  );
                case 6:
                  return Text(
                    '${formattedTimeList![6]}',
                    style: titlesTextstyle,
                  );
                case 7:
                  return Text(
                    '${formattedTimeList![7]}',
                    style: titlesTextstyle,
                  );
                case 8:
                  return Text(
                    '${formattedTimeList![8]}',
                    style: titlesTextstyle,
                  );
                case 9:
                  return Text(
                    '${formattedTimeList![9]}',
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
                    '236',
                    style: titlesTextstyle,
                  );
                case 1:
                  return const Text(
                    '240',
                    style: titlesTextstyle,
                  );
                case 2:
                  return const Text(
                    '244',
                    style: titlesTextstyle,
                  );
                case 3:
                  return const Text(
                    '248',
                    style: titlesTextstyle,
                  );
                case 4:
                  return const Text(
                    '252',
                    style: titlesTextstyle,
                  );
                case 5:
                  return const Text(
                    '256',
                    style: titlesTextstyle,
                  );
                case 6:
                  return const Text(
                    '260',
                    style: titlesTextstyle,
                  );
                case 7:
                  return const Text(
                    '264',
                    style: titlesTextstyle,
                  );
                case 8:
                  return const Text(
                    '268',
                    style: titlesTextstyle,
                  );
                case 9:
                  return const Text(
                    '272',
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
