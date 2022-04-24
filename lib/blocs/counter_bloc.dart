import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(value: 0)) {
    int count = 4;

    on<CounterIncEvent>((event, emit) {
      count++;
      print(count);

      emit(CounterState(value: state.value + 1));
    });
    on<CounterDicEvent>((event, emit) {
      count--;
      print(count);
      emit(CounterState(value: state.value - 1));
    });
  }
}
