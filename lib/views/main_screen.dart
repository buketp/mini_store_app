import 'package:flutter/material.dart';
import 'package:mini_store_app/models/product.dart';
import 'home_page.dart';
import 'profile_screen.dart';
import 'cart_page.dart';
import 'favorites_page.dart';

class MainScreen extends StatefulWidget {
  final int initialIndex;

  const MainScreen({super.key, this.initialIndex = 3});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _selectedIndex;

  String? loggedInUserName;
  bool isLoggedIn = false;

  List<Products> cartItems = [];
  List<Products> favoriteItems = [];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void addToCart(Products product) {
    setState(() {
      cartItems.add(product);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Added to cart!"), backgroundColor: Colors.grey.shade600),
    );
  }

  void removeFromCart(Products product) {
    setState(() {
      cartItems.remove(product);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${product.title} removed from cart!"),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void toggleFavorite(Products product) {
    setState(() {
      if (favoriteItems.contains(product)) {
        favoriteItems.remove(product);
      } else {
        favoriteItems.add(product);
      }
    });
  }

  void login(String name) {
    setState(() {
      loggedInUserName = name;
      isLoggedIn = true;
      _selectedIndex = 0;
    });
  }

  void logout() {
    setState(() {
      isLoggedIn = false;
      loggedInUserName = null;
      _selectedIndex = 3;
    });
  }

  List<Widget> get _pages => [
    HomePage(
      onAddToCart: addToCart,
      onToggleFavorite: toggleFavorite,
      favoriteItems: favoriteItems,
    ),
    FavoritesPage(
      favoriteItems: favoriteItems,
      onRemoveFavorite: toggleFavorite,
    ),
    CartPage(items: cartItems, onRemoveItem: removeFromCart),
    ProfileScreen(
      isLoggedIn: isLoggedIn,
      userName: loggedInUserName,
      onLogin: login,
      onLogout: logout,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favs'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
