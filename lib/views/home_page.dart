import 'package:flutter/material.dart';
import 'package:mini_store_app/components/product_card.dart';
import 'package:mini_store_app/models/product.dart';
import 'package:mini_store_app/services/product_service.dart';
import 'package:mini_store_app/views/product_detail_page.dart';

class HomePage extends StatefulWidget {
  final Function(Products) onAddToCart;
  final Function(Products) onToggleFavorite;
  final List<Products> favoriteItems;

  const HomePage({
    super.key,
    required this.onAddToCart,
    required this.onToggleFavorite,
    required this.favoriteItems,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductService _productService = ProductService();
  late Future<Product?> _productFuture;

  @override
  void initState() {
    _productFuture = _productService.loadProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String userName =
        ModalRoute.of(context)!.settings.arguments as String? ?? "";

    return Scaffold(
      appBar: AppBar(
        title: Text("Mini Store"),
        centerTitle: true,
        backgroundColor: Colors.orange.shade100,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            child: Text(
              "Welcome $userName",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<Product?>(
              future: _productFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return const Center(
                    child: Text("An error occurred while loading the data."),
                  );
                }

                if (!snapshot.hasData || snapshot.data == null) {
                  return const Center(child: Text("No products to display."));
                }

                return GridView.builder(
                  padding: EdgeInsets.all(12),

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: snapshot.data?.products?.length ?? 0,
                  itemBuilder: (context, index) {
                    final product = snapshot.data!.products![index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailPage(
                              favoriteItems: widget.favoriteItems,
                              onToggleFavorite: widget.onToggleFavorite,
                              onAddToCart: widget.onAddToCart,
                            ),
                            settings: RouteSettings(arguments: product),
                          ),
                        );
                      },
                      child: ProductCard(
                        title: product.title ?? "No title",
                        price: product.price?.toStringAsFixed(2) ?? "0.00",
                        imageUrl: product.thumbnail ?? "",
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
