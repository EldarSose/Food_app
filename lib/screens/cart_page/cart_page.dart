import 'package:flutter/material.dart';
import 'package:food/screens/navigation_bar/navigation_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  final int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 241, 241),
      body: null,
      bottomNavigationBar: NavigationBarPage(
        index: 0,
      ),
    );
  }
}
