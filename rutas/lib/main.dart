import 'package:flutter/material.dart';
import 'package:rutas/screens/NewHomePage.dart';
import 'package:rutas/screens/home_page.dart';
import 'package:rutas/screens/product_detail.dart';
import 'package:rutas/screens/shopping_cart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    //en main.dart
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      //no es obligatorio ponerle en la ruta homepage, puede ser el nombre que sea, se ocupa para despúes que vamos a 
      routes: {
        '/homepage': (context)=>HomePage(),
        '/newhomepage': (context)=>Newhomepage(),
        '/product_detail': (context)=>ProductDetail(),
        '/shopping-cart': (context)=>ShoppingCart(),
      }
    );
  }
}
