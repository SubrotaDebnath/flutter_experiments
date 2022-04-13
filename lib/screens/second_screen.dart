import 'package:flutter/material.dart';
import 'package:flutter_experiments/routes/routes.dart';

class SecondScreen extends StatelessWidget {
  final String tittle;

  const SecondScreen({
    required this.tittle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tittle,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              Routes.kThirdScreen,
              arguments: 'Third Screen Title',
            );
          },
          child: const Text('Goto Third page'),
        ),
      ),
    );
  }
}
