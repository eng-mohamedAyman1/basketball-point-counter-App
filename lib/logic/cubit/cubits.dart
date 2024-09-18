import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class CounterCubit extends Cubit<Counter> {
  CounterCubit() : super(CounterAIncrementState());
  int a = 0;
  int b = 0;
  void increment({required String team, required int increment}) {
    if (team == "a") {
      a += increment;
      emit(CounterAIncrementState());
    } else {
      b += increment;
      emit(CounterBIncrementState());
    }
  }

  void start() {
    a = 0;
    b = 0;
    emit(StartState());
  }

  //logic
}
