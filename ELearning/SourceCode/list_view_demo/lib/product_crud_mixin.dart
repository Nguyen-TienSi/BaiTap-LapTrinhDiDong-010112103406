import 'package:flutter/material.dart';
import 'package:list_view_demo/product.dart';
import 'package:list_view_demo/product_repository.dart';
import 'package:list_view_demo/product_dialog.dart';

mixin ProductCrudMixin<T extends StatefulWidget> on State<T> {
  final repo = ProductRepository();

  Future<void> addProduct() async {
    final product = await showProductDialog(context);
    if (product != null) {
      setState(() {
        repo.addProduct(product);
      });
    }
  }

  Future<void> editProduct(Product oldProduct) async {
    final product = await showProductDialog(context, product: oldProduct);
    if (product != null) {
      setState(() {
        repo.updateProduct(product);
      });
    }
  }

  void deleteProduct(Product product) {
    setState(() {
      repo.deleteProduct(product.id);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Deleted ${product.name}')),
    );
  }
}
