import 'package:charts/presentation/screens/current_screen/current_view.dart';
import 'package:charts/presentation/screens/power_screen/power_view.dart';
import 'package:flutter/material.dart';

import '../home/home_view.dart';

import '../screens/humidty_screen/humidty_screen.dart';
import '../screens/ldr_screen/ldr_view.dart';
import '../screens/tempreature__screen/tempreature_view.dart';

class Routes {
  static const String homeScreen = "/";
  static const String tempretureScreen = "/tempretureScreen";
  static const String humidtyScreen = "/humidtyScreen";

  static const String currentScreen = "/current";
  static const String powerScreen = "/power";

  static const String ldr = "/ldr";
}

class RouteGenerator {
  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.tempretureScreen:
        return MaterialPageRoute(builder: (_) => const TemperatureView());
      case Routes.humidtyScreen:
        return MaterialPageRoute(builder: (_) => const HumidtyView());
      case Routes.powerScreen:
        return MaterialPageRoute(builder: (_) => const PowerView());
      case Routes.currentScreen:
        return MaterialPageRoute(builder: (_) => const CurrentView());
      case Routes.ldr:
        return MaterialPageRoute(builder: (_) => const LdrView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('no Route '),
              ),
              body: const Center(child: Text('no Route ')),
            ));
  }
}
