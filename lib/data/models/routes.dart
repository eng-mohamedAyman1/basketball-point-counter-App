import 'package:bloc2/home_page.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class App_routes {
  Route? generatRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) =>const MyApp (),
        );
      default:
    }
    return null;
  }
}
