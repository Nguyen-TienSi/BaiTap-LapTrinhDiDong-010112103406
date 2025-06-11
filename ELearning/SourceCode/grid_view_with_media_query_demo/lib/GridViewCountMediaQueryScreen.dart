import 'package:flutter/material.dart';

class GridViewCountMediaQueryScreen extends StatelessWidget {
  const GridViewCountMediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = (screenWidth / 150).floor().clamp(2, 6);

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.count with MediaQuery'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: crossAxisCount,
        children: List.generate(20, (index) {
          return Container(
            margin: EdgeInsets.all(8),
            color: Colors.blue[(index % 9 + 1) * 100],
            child: Center(
              child: Text(
                'Item $index',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        }),
      ),
    );
  }
}
