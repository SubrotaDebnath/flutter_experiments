import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_experiments/blocs/counter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterDicEvent());
            },
            child: const Icon(Icons.remove_circle_outline),
          ),
          BlocConsumer<CounterBloc, CounterState>(
            bloc: context.read<CounterBloc>(),
            listener: (context, state) {
              print('Listen value:  ${state.value}');
              print('Listen State:  ${state.toString()}');
            },
            builder: (context, state) {
              print('build with ${state.value}');
              print('build State:  ${state.toString()}');

              return Text(state.value.toString());
            },
          ),
          ElevatedButton(
            onPressed: () {
              //context.read<CounterBloc>().add(CounterIncEvent());
              context.read<CounterBloc>().add(CounterIncEvent());
            },
            child: const Icon(Icons.add_circle_outline),
          ),
        ],
      ),
    ));
  }
}
