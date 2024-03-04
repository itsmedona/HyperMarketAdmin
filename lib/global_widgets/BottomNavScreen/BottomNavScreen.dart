import 'package:flutter/material.dart';
import 'package:hyper_mark_adm/presentation/ProductScreen/view/ProductScreen.dart';

import '../../presentation/CartScreen/view/CartScreen.dart';
import '../../presentation/ProductsListScreen/view/ProductsListScreen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  List<Widget> myWidgetList = [
    ProductScreen(),
    CartScreen(),
    ProductsListScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: myWidgetList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orange,
          currentIndex: selectedIndex,
          selectedIconTheme: IconThemeData(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.description), label: "Sheet")
          ],
        ),
      ),
    );
  }
}
