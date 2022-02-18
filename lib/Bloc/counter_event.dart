part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class OnClickAddEvent extends CounterEvent {}

class OnClickRemoveEvent extends CounterEvent {}