import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());

  int counter = 0;

  void increaseCounter() {
    emit(CounterInitialState());

    counter++;
    emit(IncreaseCounterState());
  }

  void decreaseCounter() {
    emit(CounterInitialState());
    if (counter > 0) {
      counter--;
    }

    emit(DecreaseCounterState());
  }
}
