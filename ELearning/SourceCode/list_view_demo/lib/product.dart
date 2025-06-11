class Product {
  final String id;
  final String name;
  final String description;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  String toString() {
    return 'Product{id: $id, name: $name, description: $description, price: $price}';
  }
}
