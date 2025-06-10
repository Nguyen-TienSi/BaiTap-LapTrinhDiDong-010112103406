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
    return MaterialApp(home: const GridViewHomeScreen());
  }
}

class GridViewHomeScreen extends StatelessWidget {
  const GridViewHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = [
      {'title': 'GridView.builder', 'widget': const GridViewBuilderScreen()},
      {'title': 'GridView.count', 'widget': const GridViewCountScreen()},
      {'title': 'GridView.custom', 'widget': const GridViewCustomScreen()},
      {'title': 'GridView.extent', 'widget': const GridViewExtentScreen()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('GridView Navigation')),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(screens.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => screens[index]['widget'] as Widget),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(16),
              child: Center(
                child: Text(
                  screens[index]['title'] as String,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
