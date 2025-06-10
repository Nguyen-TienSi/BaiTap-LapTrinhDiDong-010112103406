import 'package:flutter/material.dart';

class GridViewExtentScreen extends StatelessWidget {
  const GridViewExtentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView.extent Example')),
      body: GridView.extent(
        padding: const EdgeInsets.all(16),
        maxCrossAxisExtent: 150, // chiều rộng tối đa cho mỗi item
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: List.generate(12, (index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.indigo[100 * ((index % 8) + 1)],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        }),
      ),
    );
  }
}
