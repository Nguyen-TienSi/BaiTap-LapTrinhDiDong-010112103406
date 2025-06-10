import 'package:flutter/material.dart';

class SliverToBoxAdapterScreen extends StatelessWidget {
  const SliverToBoxAdapterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SliverToBoxAdapter Example')),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Header Section',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                title: Text('List Item $index'),
              ),
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
