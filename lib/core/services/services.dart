import 'dart:convert';
import 'package:eldemeshki_delivery/core/services/model.dart';
import 'package:flutter/services.dart';

Future<List<Product>> loadProducts() async {
  final String response = await rootBundle.loadString('assets/products.json');
  final data = json.decode(response) as List;
  return data.map((json) => Product.fromJson(json)).toList();
}

Future<List<Map<String, dynamic>>> getCategoriesWithCounts() async {
  final products = await loadProducts();
  // استخراج الفئات الفريدة
  final categories = products.map((product) => product.category).toSet().toList();
  // إنشاء قائمة تحتوي على الفئة وعدد المنتجات وصورة تمثيلية
  return categories.map((category) {
    final categoryProducts = products.where((p) => p.category == category).toList();
    return {
      'category': category,
      'count': categoryProducts.length,
      'image': categoryProducts.isNotEmpty ? categoryProducts.first.image : 'assets/images/eldemeshki.png',
    };
  }).toList();
}
