import 'package:flutter/material.dart';

class CounterInheritedWidget extends InheritedWidget {
  final int counter;
  final void Function() increment;

  const CounterInheritedWidget({
    super.key,
    required this.counter,
    required this.increment,
    required super.child,
  });

  static CounterInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterInheritedWidget>();
  }

  @override
  bool updateShouldNotify(CounterInheritedWidget oldWidget) {
    return counter != oldWidget.counter;
  }
}
