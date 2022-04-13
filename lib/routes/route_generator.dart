import 'package:flutter/material.dart';
import 'package:flutter_experiments/routes/routes.dart';
import 'package:flutter_experiments/screens/error_screen.dart';
import 'package:flutter_experiments/screens/home_page.dart';
import 'package:flutter_experiments/screens/second_screen.dart';
import 'package:flutter_experiments/screens/third_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.kRootScreen:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.kSecondScreen:
        return MaterialPageRoute(builder: (_) => const SecondScreen());
      case Routes.kThirdScreen:
        return MaterialPageRoute(builder: (_) => const ThirdScreen());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorScreen());
    }
  }
}
