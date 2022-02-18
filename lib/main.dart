import 'package:coutner_app_bloc2/Bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Counter Demo using Bloc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App Using Bloc'),
      ),
      body: Column(
        children: [
          BlocBuilder<CounterBloc,CounterState>(
            builder: (context,state) {
              return Text(state.VarCounter.toString(), style: const TextStyle(fontSize: 30),);
            }
          ),
          ElevatedButton(
              onPressed: (){
                  BlocProvider.of<CounterBloc>(context).add(OnClickAddEvent());
              },
              child: const Icon(Icons.add, size: 20,)),
          ElevatedButton(
              onPressed: (){
                BlocProvider.of<CounterBloc>(context).add(OnClickRemoveEvent());
              },
              child: const Icon(Icons.minimize_rounded, size: 20,)),
        ],
      ),
    );
  }
}
