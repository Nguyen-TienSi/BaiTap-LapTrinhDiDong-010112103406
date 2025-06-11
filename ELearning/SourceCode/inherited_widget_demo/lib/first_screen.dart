import 'package:flutter/material.dart';

import 'counter_inherited_widget.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inherited = CounterInheritedWidget.of(context)!;
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: ${inherited.counter}'),
            ElevatedButton(
              onPressed: inherited.increment,
              child: const Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/second'),
              child: const Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
