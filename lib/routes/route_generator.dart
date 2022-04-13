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
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondScreen(
              tittle: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => const ErrorScreen());

      case Routes.kThirdScreen:
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => ThirdScreen(
              tittle: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (_) => const ErrorScreen());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorScreen());
    }
  }
}
