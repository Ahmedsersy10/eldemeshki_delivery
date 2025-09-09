class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;
  final String category;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'] ?? 0,
    name: json['name'] ?? '',
    description: json['description'] ?? '',
    price: (json['price'] ?? 0).toDouble(),
    image: json['image'] ?? 'assets/images/eldemeshki.png',
    category: json['category'] ?? '',
  );
}
