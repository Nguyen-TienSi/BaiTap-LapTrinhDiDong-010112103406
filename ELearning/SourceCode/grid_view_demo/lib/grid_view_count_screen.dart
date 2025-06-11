import 'package:flutter/material.dart';

class GridViewCountScreen extends StatelessWidget {
  const GridViewCountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView.count'), centerTitle: true),
      body: GridView.count(
        crossAxisCount: 2,
        // số cột
        crossAxisSpacing: 10,
        // khoảng cách ngang giữa các item
        mainAxisSpacing: 10,
        // khoảng cách dọc giữa các item
        padding: const EdgeInsets.all(16),
        children: List.generate(8, (index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue[100 * ((index % 8) + 1)],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(fontSize: 18),
            ),
          );
        }),
      ),
    );
  }
}
