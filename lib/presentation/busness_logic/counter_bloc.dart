import 'dart:async';

class CounterBloc {
  int count = 0;

  // Send value to stream
  final StreamController<int> _counterController = StreamController<int>();

  //Expose value to StreamBuilder
  Stream<int> get counterStream => _counterController.stream;

  //Call BloC from view
  void counterIncrement()=> _counterController.sink.add(count++);

  // Close Controller to prevent memory leak
  void close()=> _counterController.close();
}

final counterBloc = CounterBloc();