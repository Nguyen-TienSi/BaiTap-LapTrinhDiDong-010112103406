import 'package:flutter/material.dart';

class SliverToBoxAdapterScreen extends StatelessWidget {
  const SliverToBoxAdapterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverToBoxAdapter Example'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Top Item $index')),
              childCount: 5,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              padding: const EdgeInsets.all(24),
              color: Colors.amber,
              child: const Center(
                child: Text(
                  'This is a box inside slivers!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Bottom Item $index')),
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
