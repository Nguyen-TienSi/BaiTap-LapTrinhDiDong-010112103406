import 'package:flutter/material.dart';
import 'package:grid_view_with_media_query_demo/GridViewBuilderMediaQueryScreen.dart';
import 'package:grid_view_with_media_query_demo/GridViewCountMediaQueryScreen.dart';
import 'package:grid_view_with_media_query_demo/GridViewCustomMediaQueryScreen.dart';
import 'package:grid_view_with_media_query_demo/GridViewExtentMediaQueryScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView with MediaQuery'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.grid_on, color: Colors.purple),
                title: const Text('GridView.custom with MediaQuery'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const GridViewCustomMediaQueryScreen(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Card(
              child: ListTile(
                leading: const Icon(Icons.view_module, color: Colors.green),
                title: const Text('GridView.builder with MediaQuery'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const GridViewBuilderMediaQueryScreen(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Card(
              child: ListTile(
                leading: const Icon(Icons.grid_view, color: Colors.orange),
                title: const Text('GridView.extent with MediaQuery'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const GridViewExtentMediaQueryScreen(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Card(
              child: ListTile(
                leading: const Icon(Icons.apps, color: Colors.blue),
                title: const Text('GridView.count with MediaQuery'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const GridViewCountMediaQueryScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
