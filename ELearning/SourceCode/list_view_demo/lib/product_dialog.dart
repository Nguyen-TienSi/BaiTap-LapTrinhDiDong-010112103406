import 'package:flutter/material.dart';
import 'package:list_view_demo/product.dart';
import 'package:uuid/uuid.dart';

Future<Product?> showProductDialog(BuildContext context, {Product? product}) {
  final nameController = TextEditingController(text: product?.name ?? '');
  final descController = TextEditingController(
    text: product?.description ?? '',
  );
  final priceController = TextEditingController(
    text: product?.price.toString() ?? '',
  );

  return showDialog<Product>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(product == null ? 'Add Product' : 'Edit Product'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: descController,
            decoration: InputDecoration(labelText: 'Description'),
          ),
          TextField(
            controller: priceController,
            decoration: InputDecoration(labelText: 'Price'),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            final name = nameController.text.trim();
            final desc = descController.text.trim();
            final price = double.tryParse(priceController.text) ?? 0.0;
            if (name.isEmpty) return;
            Navigator.pop(
              context,
              Product(
                id: product?.id ?? const Uuid().v4(),
                name: name,
                description: desc,
                price: price,
              ),
            );
          },
          child: const Text('Save'),
        ),
      ],
    ),
  );
}
