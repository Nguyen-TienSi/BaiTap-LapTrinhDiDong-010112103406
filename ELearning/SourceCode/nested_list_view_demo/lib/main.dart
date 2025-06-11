import 'package:flutter/material.dart';
import 'package:nested_list_view_demo/nested_list_view_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NestedListViewScreen());
  }
}
