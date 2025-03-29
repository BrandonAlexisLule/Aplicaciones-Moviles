import 'package:flutter/material.dart';
import 'package:pasteles/models/pastel_shop.dart';
import 'package:pasteles/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PastelShop(), 
      builder: (context, child) => const 
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage())
    );
  }
}
