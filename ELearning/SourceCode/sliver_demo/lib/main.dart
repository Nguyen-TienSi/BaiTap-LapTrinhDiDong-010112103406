import 'package:flutter/material.dart';
import 'package:sliver_demo/sliver_fill_remaining_screen.dart';
import 'package:sliver_demo/sliver_fill_viewport_screen.dart';
import 'package:sliver_demo/sliver_grid_screen.dart';
import 'package:sliver_demo/sliver_list_screen.dart';
import 'package:sliver_demo/sliver_to_box_adapter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliver Demo Home')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('SliverGrid Example'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SliverGridScreen()),
            ),
          ),
          ListTile(
            title: const Text('SliverList Example'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SliverListScreen()),
            ),
          ),
          ListTile(
            title: const Text('SliverToBoxAdapter Example'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SliverToBoxAdapterScreen()),
            ),
          ),
          ListTile(
            title: const Text('SliverFillRemaining Example'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SliverFillRemainingScreen()),
            ),
          ),
          ListTile(
            title: const Text('SliverFillViewport Example'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SliverFillViewportScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
