import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatelessWidget {
  const GridViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView.builder'), centerTitle: true),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Số cột
          crossAxisSpacing: 12, // Khoảng cách giữa các cột
          mainAxisSpacing: 12, // Khoảng cách giữa các dòng
          childAspectRatio: 3 / 2, // Tỉ lệ chiều rộng / chiều cao
        ),
        itemCount: 10, // Số lượng item
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.teal[100 * ((index % 8) + 1)],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
