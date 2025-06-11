import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/second_screen.dart';

import 'counter_inherited_widget.dart';
import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterInheritedWidget(
      counter: _counter,
      increment: _increment,
      child: MaterialApp(
        home: const FirstScreen(),
        routes: {
          '/second': (_) => const SecondScreen(),
        },
      ),
    );
  }
}
