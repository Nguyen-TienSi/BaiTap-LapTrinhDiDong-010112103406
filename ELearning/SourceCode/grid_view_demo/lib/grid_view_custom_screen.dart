import 'package:flutter/material.dart';

class GridViewCustomScreen extends StatelessWidget {
  const GridViewCustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView.custom Example')),
      body: GridView.custom(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // số cột
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1, // tỉ lệ width : height = 1:1
        ),
        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.teal[100 * ((index % 8) + 1)],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          },
          childCount: 15,
        ),
      ),
    );
  }
}
