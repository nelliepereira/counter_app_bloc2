part of 'counter_bloc.dart';


class CounterState {
   final int VarCounter;
  CounterState({required this.VarCounter});
}

class CounterInitial extends CounterState {
  CounterInitial() : super(VarCounter: 0 );
}

class CounterSuccessState extends CounterState {
  CounterSuccessState() : super(VarCounter: 0 );

}
