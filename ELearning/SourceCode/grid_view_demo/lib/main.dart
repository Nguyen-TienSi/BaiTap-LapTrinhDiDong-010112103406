import 'package:flutter/material.dart';
import 'package:grid_view_demo/grid_view_builder_screen.dart';
import 'package:grid_view_demo/grid_view_count_screen.dart';
import 'package:grid_view_demo/grid_view_custom_screen.dart';
import 'package:grid_view_demo/grid_view_extent_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = [
      {'title': 'GridView.builder', 'widget': const GridViewBuilderScreen()},
      {'title': 'GridView.count', 'widget': const GridViewCountScreen()},
      {'title': 'GridView.custom', 'widget': const GridViewCustomScreen()},
      {'title': 'GridView.extent', 'widget': const GridViewExtentScreen()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Demo Menu'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: screens.map((screen) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => screen['widget'] as Widget),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  screen['title'] as String,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
