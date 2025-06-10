import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  ListViewBuilderScreen({super.key});

  final List<String> products = [
    'Sản phẩm 1',
    'Sản phẩm 2',
    'Sản phẩm 3',
    'Sản phẩm 4',
    'Sản phẩm 5',
    'Sản phẩm 6',
    'Sản phẩm 7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Danh sách sản phẩm')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text(products[index]),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Bạn đã chọn ${products[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}
