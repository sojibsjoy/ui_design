import 'package:flutter/material.dart';
import 'package:ui_design/ui/screens/products/products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductsScreen(),
              ),
            );
          },
          child: const Text(
            'Products Screen',
          ),
        ),
      ),
    );
  }
}
