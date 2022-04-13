import 'package:flutter/material.dart';
import 'package:flutter_experiments/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.kSecondScreen);
          },
          child: const Text('Go to Second Screen'),
        ),
      ),
    );
  }
}
