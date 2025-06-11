import 'package:flutter/material.dart';

class GridViewExtentMediaQueryScreen extends StatelessWidget {
  const GridViewExtentMediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxCrossAxisExtent = (screenWidth / 3).clamp(120.0, 200.0);

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.extent with MediaQuery'),
        centerTitle: true,
      ),
      body: GridView.extent(
        maxCrossAxisExtent: maxCrossAxisExtent,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        padding: EdgeInsets.all(8),
        children: List.generate(20, (index) {
          return Container(
            color: Colors.orange[(index % 9 + 1) * 100],
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
