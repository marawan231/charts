import 'package:charts/presentation/app/app.dart';
import 'package:charts/presentation/models/temp.dart';
import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const _credentials = r'''

{
  "type": "service_account",
  "project_id": "gsheet-355022",
  "private_key_id": "d69953833d1bf9dfd92e48ef842046fa0277bd75",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCuV3NCWxOqRrbe\nvU4maHpawJbDBBzvwRIMGLAVkx1Y9b5Sui67HB/7/T5FT1HovfA6adCErQdmOFCi\nSS+tBguoyfhdMYwXCq9wu1B4ihI0u2FnN45Jc8liA2n6DVoXATenxCbWlganwcg7\ntxGJVy1D/JabpQL/rPPGK9OpxsyG3KPmjtA4G1iusF58YHpVNK7U2DYB+b7lbuOH\nbgxxbo0Iniuyyp5C69UW81ekgijJRtyBQwVOJROQOuNYFBKuu4u0lkyebeeidHzJ\nw9SWBAOuVZ2XltF5dPd3HInpxnRKJYpjwuoSHSFcHB0kCsvSd/oahK1nXmrOvypN\ncBufsAr1AgMBAAECggEAD1h7n1I2Krb37vOWYGnlczC5uuEVM8Lrz4xdjqVlxoHP\nxqcqtXK/tSxQtRF+GGo3lGMVMch4YUM0HcTElIp2r9zvQDMiejJV+12rGW3im/YH\n/pzbDy4VtZhIiMEKHM8ROT9aJ9AKAyD0etHqkj5nkDEFVLfmlqvmw5rx+GMbETe1\nj9mTytJHjplhC6WwO0nRrYrtezex2kqWbhwqdsE/kQ85veNMp9L8rGxpISXCrFvQ\nfl1q9+wYugKOA0bGIc1qR9zE93ASk8x9nl8+UP2f12Wr7xf6x5DBnslXa9HppdOV\nmTy7/iXRvjs/c0DubxOecxxGm/KcbmufwkcRzAhAVQKBgQDtCNR2vGfMfitlnLiA\nMrnmGc5RpCmAn5h+xX0oYGy7lFDHukGJ0HCcEeh0R7VGAf8QNRS65Bgv0GN6vC7v\nMscPYzGrcuLsUmHxDErGvH3t1ag8Plquu8tCaEkMCSlVUGR0IFMz0Mv/jAZh0Lg3\nBxUqfFMS5RVBojU/yuJCPgrJSwKBgQC8SnvatCNqxzQ19GI6lOt6xMrvpBU6/5E4\naRrbJmIvOHsZmMrJ6blADr+tlj1NwpTTzqpdvTrc/8lra9D7TiQt+maW/UpLncsa\n5sAt9dJqFYhRk/7WWceDJNSeWuV2m4Lk7oIlMmxOJPaHvqE9+0SH1b2lnH6g7DSm\nEwWGYX4UvwKBgGGBY1zgjdZaBGINQPxDYaNc9DkzTXtCq4lileSZHcFf9obigHk/\njEM3PqcupEwDIDg7jaZ/k89/apyfcrMk8SvMQy9i2CQck3uD8fKksSy32jfF8qm0\nSJ2tpnbUAfO9WUVH0tIazv/1St7L7Ct+t189uzKnl8HjBwKR49caDHfXAoGAGswC\n6nI+pCCrlo4sOKgfBz7gntBcUSQ0F7Ilp1DEInJIWrE7ExdXTP2MW/kIyntJ0QcV\nife3W+JvWQFkIY/SaFS9qvlrTG2tjSuP6DqW8pAT8YA9gWYPleN0+wB2rbWeIFSt\nYvvVHB34lAMWUYrkCuzpa5tlDiPvrj8Ax0oytmMCgYEAlUjPQcUJJomXWLZ2IKhU\ngJza3xkQSpqbDA/RC0SuqM8fkrZhcWpFAU3PM3Pc+X5NoX9hG8S5yKADnnJQ4RkI\n7kI4CAKk6XBKY03yLbdAUpECAbyAupQoRCLGWjbqGmoDXa9ajA4OLRRI1jA8/ffF\nDJ+JjK8QHrhNTz+oOXJfWSU=\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheets@gsheet-355022.iam.gserviceaccount.com",
  "client_id": "111696277550121629481",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets%40gsheet-355022.iam.gserviceaccount.com"
}
''';

const _spreadsheetId = '1-8wFdvyAaxfykm3Qn033sbo1XTaR_Qt6kq3FCINia9E';

void main() async {
  // init GSheets
  final gsheets = GSheets(_credentials);
  // fetch spreadsheet by its id
  final spreadSheet = await gsheets.spreadsheet(_spreadsheetId);
  var sheet = spreadSheet.worksheetByTitle('SensorData');

  final temp = await sheet!.values.map.columnByKey(
    'Temperature(°C)',
  );
  tempList = temp!.values.toList();

  final humidty = await sheet.values.map.columnByKey(
    'Humidity( %)',
  );
  humidtyList = humidty!.values.toList();

  final leftLDR = await sheet.values.map.columnByKey(
    'LeftLDR',
  );

  leftLdrList = leftLDR!.values.toList();
  final rightLdr = await sheet.values.map.columnByKey(
    'RightLDR',
  );

  rightLdrList = rightLdr!.values.toList();

  final current = await sheet.values.map.columnByKey(
    'Current( amps)',
  );

  currentList = current!.values.toList();

  final volt = await sheet.values.map.columnByKey(
    'Voltage( volts)',
  );

  voltageList = volt!.values.toList();

  final power = await sheet.values.map.columnByKey(
    'Power(watt)',
  );

  powerList = power!.values.toList();

  final error = await sheet.values.map.columnByKey(
    'Fault Name',
  );

  errorList = error!.values.toList();
  print(errorList![0].toString());

  final time = await sheet.values.map.columnByKey(
    'Time',
  );
  print(time);

  timeList = time!.values.toList();
  print(timeList);

  String? formatSheetTime(String? timeGot) {
    if (timeGot == null || timeGot == '') return null;
    final dateSome = DateTime.fromMillisecondsSinceEpoch(
        ((double.parse(timeGot) - 25569) * 86400000).toInt(),
        isUtc: true);
    var dateTime = DateTime.parse(dateSome.toString());

    var formattedTime = DateFormat('ss ').format(dateTime);

    return formattedTime;
  }

  formattedTimeList = timeList!.map((e) => formatSheetTime(e)).toList();

  print(formattedTimeList.toString());
  runApp(const MyApp());
}
