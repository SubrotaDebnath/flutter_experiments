import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_experiments/presentation/screens/home_screen.dart';

import 'blocs/counter_bloc.dart';

void main() {
 // BlocOverrides.runZoned(() => runApp(const MyApp()),blocObserver: CounterBloc(),);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>  CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Empty',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
