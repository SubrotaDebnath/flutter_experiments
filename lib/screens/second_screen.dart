import 'package:flutter/material.dart';
import 'package:flutter_experiments/routes/routes.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.kThirdScreen);
          },
          child: const Text('Goto Third page'),
        ),
      ),
    );
  }
}
