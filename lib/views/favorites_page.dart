import 'package:flutter/material.dart';
import 'package:mini_store_app/models/product.dart';

class FavoritesPage extends StatelessWidget {
  final List<Products> favoriteItems;
  final Function(Products) onRemoveFavorite;

  const FavoritesPage({
    super.key,
    required this.favoriteItems,
    required this.onRemoveFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
        centerTitle: true,
        backgroundColor: Colors.orange.shade100,
      ),
      body: favoriteItems.isEmpty
          ? const Center(
              child: Text(
                "You don't have a favorite product yet.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                final product = favoriteItems[index];

                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        product.thumbnail ?? "",
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.broken_image, size: 60),
                      ),
                    ),
                    title: Text(
                      product.title ?? "No title",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "${product.price?.toStringAsFixed(2) ?? "0.00"} TL",
                      style: const TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.favorite, color: Colors.red),
                      onPressed: () {
                        onRemoveFavorite(product);
                      },
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/detail',
                        arguments: product,
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
