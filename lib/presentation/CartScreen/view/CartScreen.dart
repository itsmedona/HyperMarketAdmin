import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        backgroundColor: Colors.orange,title: Text("Cart ")),
      body: Center(child: Text("Cart Screen")),
    );
  }
}