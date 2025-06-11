import 'package:flutter/material.dart';
import 'package:list_view_demo/product_crud_mixin.dart';

class ListViewSeparatedScreen extends StatefulWidget {
  const ListViewSeparatedScreen({super.key});

  @override
  State<ListViewSeparatedScreen> createState() =>
      _ListViewSeparatedScreenState();
}

class _ListViewSeparatedScreenState extends State<ListViewSeparatedScreen>
    with ProductCrudMixin<ListViewSeparatedScreen> {
  @override
  Widget build(BuildContext context) {
    final products = repo.getAllProducts();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách sản phẩm'),
        centerTitle: true,
      ),
      body: ListView.separated(
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
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addProduct,
        child: const Icon(Icons.add),
      ),
    );
  }
}
