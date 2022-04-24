part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class CounterIncEvent extends CounterEvent {
  @override
  List<Object?> get props => [];
}
class CounterDicEvent extends CounterEvent {
  @override
  List<Object?> get props => [];
}
