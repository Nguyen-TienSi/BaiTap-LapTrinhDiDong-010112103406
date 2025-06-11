import 'package:flutter/material.dart';

class GridViewBuilderMediaQueryScreen extends StatelessWidget {
  const GridViewBuilderMediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = (screenWidth / 150).floor().clamp(2, 6);

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.builder with MediaQuery'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: 20,
        padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.green[(index % 9 + 1) * 100],
            child: Center(
              child: Text(
                'Item $index',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}
