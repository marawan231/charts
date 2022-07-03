// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';

import '../resources/routes_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // named constructor

// singleton or single instance

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RouteGenerator routeGenerator = RouteGenerator();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routeGenerator.getRoute,
      initialRoute: Routes.homeScreen,
    );
  }
}
