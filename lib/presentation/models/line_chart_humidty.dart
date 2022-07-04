import 'package:charts/presentation/models/temp.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class LineTitlesHumidty {
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
                  return Text(
                    '33',
                    style: titlesTextstyle,
                  );
                case 1:
                  return Text(
                    '33.4',
                    style: titlesTextstyle,
                  );
                case 2:
                  return Text(
                    '33.8',
                    style: titlesTextstyle,
                  );
                case 3:
                  return Text(
                    '34.2',
                    style: titlesTextstyle,
                  );
                case 4:
                  return Text(
                    '34.6',
                    style: titlesTextstyle,
                  );
                case 5:
                  return Text(
                    '35',
                    style: titlesTextstyle,
                  );
                case 6:
                  return Text(
                    '35.4',
                    style: titlesTextstyle,
                  );
                case 7:
                  return Text(
                    '35.8',
                    style: titlesTextstyle,
                  );
                case 8:
                  return Text(
                    '36.2',
                    style: titlesTextstyle,
                  );
                case 9:
                  return Text(
                    '36.4',
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
