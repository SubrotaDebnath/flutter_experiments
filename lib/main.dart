import 'package:flutter/material.dart';
import 'package:flutter_experiments/routes/route_generator.dart';
import 'package:flutter_experiments/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generated Routes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.kRootScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
