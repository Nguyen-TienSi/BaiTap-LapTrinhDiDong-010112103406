import 'package:flutter/material.dart';

class ListViewSeparatedScreen extends StatelessWidget {
  ListViewSeparatedScreen({super.key});

  final List<String> items = [
    'Táo',
    'Chuối',
    'Anh đào',
    'Sầu riêng',
    'Cơm cháy',
    'Sung',
    'Nho',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trái cây yêu thích')),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.local_grocery_store),
            title: Text(items[index]),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Bạn chọn ${items[index]}')),
              );
            },
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
      ),
    );
  }
}
