import 'package:flutter/material.dart';
import 'package:hyper_mark_adm/presentation/ProductScreen/controller/ProductScreenController.dart';
import 'package:hyper_mark_adm/presentation/ProductScreen/view/ProductScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProductController(),
      child: AdmApp(),
    ),
  );
}

class AdmApp extends StatelessWidget {
  const AdmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );
  }
}