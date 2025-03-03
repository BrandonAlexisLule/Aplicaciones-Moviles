import 'package:flutter/material.dart';
import 'package:rutas/screens/home_page.dart';
import 'package:rutas/screens/product_detail.dart';
import 'package:rutas/screens/shopping_cart.dart';

void main() {
  runApp(const MainApp(pasteles: []));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required List pasteles});

  @override
  Widget build(BuildContext context) {
    
    //en main.dart
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      //no es obligatorio ponerle en la ruta homepage, puede ser el nombre que sea, se ocupa para despúes que vamos a 
      routes: {
        '/homepage': (context)=>HomePage(),
        '/product_detail': (context)=>ProductDetail(),
        '/shopping-cart': (context)=>ShoppingCart(),
      }
    );
  }
}
