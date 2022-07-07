part of 'counter_cubit.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterInitialState extends CounterState {}

class IncreaseCounterState extends CounterState {}

class DecreaseCounterState extends CounterState {}
