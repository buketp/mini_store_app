import 'package:flutter/material.dart';
import 'package:mini_store_app/views/main_screen.dart';
//import 'package:mini_store_app/views/product_detail_page.dart';
//import 'package:mini_store_app/views/profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mini Store",
      initialRoute: '/main',
      routes: {
        //'/profile': (context) => const ProfileScreen(),
        '/main': (context) => const MainScreen(),
        //'/detail': (context) => const ProductDetailPage(),
      },

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
    );
  }
}
