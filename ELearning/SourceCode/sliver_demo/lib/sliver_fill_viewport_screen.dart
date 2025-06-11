import 'package:flutter/material.dart';

class SliverFillViewportScreen extends StatelessWidget {
  const SliverFillViewportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverFillViewport Example'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillViewport(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: Colors.primaries[index % Colors.primaries.length],
                child: Center(
                  child: Text(
                    'Page $index',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
