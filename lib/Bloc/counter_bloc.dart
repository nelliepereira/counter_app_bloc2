import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()){
        on<CounterEvent>((event, emit) {

      if (event is OnClickAddEvent) {
        emit(CounterState(VarCounter: state.VarCounter + 1));

      } else {
        if(state.VarCounter > 0) {
          emit(CounterState(VarCounter: state.VarCounter - 1));
      }}
    });
  }
}
