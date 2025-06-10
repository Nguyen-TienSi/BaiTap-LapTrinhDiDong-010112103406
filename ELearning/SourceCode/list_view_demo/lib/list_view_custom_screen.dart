import 'package:flutter/material.dart';

class ListViewCustomScreen extends StatelessWidget {
  ListViewCustomScreen({super.key});

  final List<String> fruits = [
    'Apple',
    'Banana',
    'Cherry',
    'Durian',
    'Elderberry',
    'Fig',
    'Grapes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fruits')),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.local_grocery_store),
              title: Text(fruits[index]),
              subtitle: Text('Fruit #${index + 1}'),
            ),
          );
        }, childCount: fruits.length),
      ),
    );
  }
}
