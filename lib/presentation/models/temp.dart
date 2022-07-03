List? tempList;
late List humidtyList;
List? leftLdrList;
List? rightLdrList;
List? currentList;
List? voltageList;
List? powerList;
List? timeList;
List? formattedTimeList;
List? errorList;

final doubleTempList = tempList!.map((e) => double.parse(e)).toList();
final finalTempList = doubleTempList.map((e) => e / 8).toList();

final doubleHumidtyList = humidtyList.map((e) => double.parse(e)).toList();
final finalHumidtyList = doubleHumidtyList.map((e) => e / 8).toList();

final doubleVoltList = voltageList!.map((e) => double.parse(e)).toList();
final finalVoltList = doubleVoltList.map((e) => e / 2).toList();

final doubleCurrentList = currentList!.map((e) => double.parse(e)).toList();
final finalCurrentList = doubleCurrentList.map((e) => e / .05).toList();

final doublePowerList = powerList!.map((e) => double.parse(e)).toList();
final finalPowerList = doublePowerList.map((e) => e * 2).toList();

final doubleRightLdrList = rightLdrList!.map((e) => double.parse(e)).toList();
final finalRightLdrList = doubleRightLdrList.map((e) => e / 40).toList();

final doubleLeftLdrList = leftLdrList!.map((e) => double.parse(e)).toList();
final finalLefLdrList = doubleLeftLdrList.map((e) => e / 40).toList();
