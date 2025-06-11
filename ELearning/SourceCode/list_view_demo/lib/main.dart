import 'package:flutter/material.dart';
import 'package:list_view_demo/list_view_builder_screen.dart';
import 'package:list_view_demo/list_view_custom_screen.dart';
import 'package:list_view_demo/list_view_separated_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo Menu',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Menu'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            title: const Text('ListView.builder'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ListViewBuilderScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('ListView.separated'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ListViewSeparatedScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('ListView.custom'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ListViewCustomScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
