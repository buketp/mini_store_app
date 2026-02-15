import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_store_app/models/product.dart';

class ProductService {
  Future<Product?> loadProducts() async {
    try {
      final String response = await rootBundle.loadString(
        'lib/data/products.json',
      );
      final data = json.decode(response);

      return Product.fromJson(data);
    } catch (e) {
      debugPrint("JSON loading error: $e");
      return null;
    }
  }
}
