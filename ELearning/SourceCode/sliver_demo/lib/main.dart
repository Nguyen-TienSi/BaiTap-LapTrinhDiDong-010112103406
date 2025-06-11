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
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {
        'title': 'SliverGrid Example',
        'icon': Icons.grid_on,
        'screen': const SliverGridScreen(),
      },
      {
        'title': 'SliverList Example',
        'icon': Icons.list,
        'screen': const SliverListScreen(),
      },
      {
        'title': 'SliverToBoxAdapter Example',
        'icon': Icons.crop_square,
        'screen': const SliverToBoxAdapterScreen(),
      },
      {
        'title': 'SliverFillRemaining Example',
        'icon': Icons.vertical_align_bottom,
        'screen': const SliverFillRemainingScreen(),
      },
      {
        'title': 'SliverFillViewport Example',
        'icon': Icons.view_agenda,
        'screen': const SliverFillViewportScreen(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver Example Menu'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: menuItems.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(item['icon'] as IconData, color: Colors.blue),
                title: Text(item['title'] as String),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item['screen'] as Widget),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
