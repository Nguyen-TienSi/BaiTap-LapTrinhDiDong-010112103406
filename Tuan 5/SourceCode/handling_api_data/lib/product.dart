class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'],
    name: json['name'],
    price: json['price'] is String
        ? double.tryParse(json['price']) ?? 0.0
        : (json['price'] as num).toDouble(),
    description: json['des'],
    imageUrl: json['imgURL'],
  );
}
