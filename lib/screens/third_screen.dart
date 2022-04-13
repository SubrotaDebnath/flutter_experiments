import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final String tittle;

  const ThirdScreen({
    required this.tittle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(''),
        ),
      ),
    );
  }
}
