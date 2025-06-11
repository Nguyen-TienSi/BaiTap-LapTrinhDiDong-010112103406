import 'package:flutter/material.dart';

class GridViewCustomMediaQueryScreen extends StatelessWidget {
  const GridViewCustomMediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = (screenWidth / 150).floor().clamp(2, 6);

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.custom with MediaQuery'),
        centerTitle: true,
      ),
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            color: Colors.purple[(index % 9 + 1) * 100],
            child: Center(
              child: Text(
                'Item $index',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        }, childCount: 20),
        padding: EdgeInsets.all(8),
      ),
    );
  }
}
