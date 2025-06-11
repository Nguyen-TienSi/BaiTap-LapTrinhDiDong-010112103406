import 'package:list_view_demo/product.dart';

class ProductRepository {
  ProductRepository._privateConstructor();

  static final ProductRepository _instance =
      ProductRepository._privateConstructor();

  factory ProductRepository() {
    if (_instance._products.isEmpty) {
      _instance.generateMockProducts();
    }
    return _instance;
  }

  final List<Product> _products = [];

  // Create
  void addProduct(Product product) {
    _products.add(product);
  }

  // Read all
  List<Product> getAllProducts() {
    return List.unmodifiable(_products);
  }

  // Read by id
  Product? getProductById(String id) {
    for (final product in _products) {
      if (product.id == id) return product;
    }
    return null;
  }

  // Update
  bool updateProduct(Product updatedProduct) {
    final index = _products.indexWhere((p) => p.id == updatedProduct.id);
    if (index == -1) return false;
    _products[index] = updatedProduct;
    return true;
  }

  // Delete
  bool deleteProduct(String id) {
    final initialLength = _products.length;
    _products.removeWhere((p) => p.id == id);
    return _products.length < initialLength;
  }

  void generateMockProducts([int count = 10]) {
    _products.clear();
    for (int i = 1; i <= count; i++) {
      _products.add(
        Product(
          id: 'p$i',
          name: 'Product $i',
          description: 'Description for product $i',
          price: (i * 10).toDouble(),
        ),
      );
    }
  }
}
