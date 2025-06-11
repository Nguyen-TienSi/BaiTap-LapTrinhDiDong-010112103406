import 'package:flutter/material.dart';
import 'package:list_view_demo/product_crud_mixin.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen>
    with ProductCrudMixin<ListViewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    final products = repo.getAllProducts();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách sản phẩm'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Text('\$${product.price.toStringAsFixed(2)}'),
            onTap: () => editProduct(product),
            onLongPress: () => deleteProduct(product),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addProduct,
        child: const Icon(Icons.add),
      ),
    );
  }
}
