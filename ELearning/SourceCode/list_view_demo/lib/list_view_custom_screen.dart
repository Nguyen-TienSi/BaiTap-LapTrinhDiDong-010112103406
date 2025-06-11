import 'package:flutter/material.dart';
import 'package:list_view_demo/product_crud_mixin.dart';

class ListViewCustomScreen extends StatefulWidget {
  const ListViewCustomScreen({super.key});

  @override
  State<ListViewCustomScreen> createState() => _ListViewCustomScreenState();
}

class _ListViewCustomScreenState extends State<ListViewCustomScreen>
    with ProductCrudMixin<ListViewCustomScreen> {
  @override
  Widget build(BuildContext context) {
    final products = repo.getAllProducts();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách sản phẩm'),
        centerTitle: true,
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: Text(product.name),
              subtitle: Text(product.description),
              trailing: Text('\$${product.price.toStringAsFixed(2)}'),
              onTap: () => editProduct(product),
              onLongPress: () => deleteProduct(product),
            ),
          );
        }, childCount: products.length),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addProduct,
        child: const Icon(Icons.add),
      ),
    );
  }
}
