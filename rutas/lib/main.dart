import 'package:flutter/material.dart';
import 'package:rutas/screens/home_page.dart';
import 'package:rutas/screens/introduction_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    //en main.dart
    return MaterialApp(
      home: IntroductionPage(),
      //no es obligatorio ponerle en la ruta homepage, puede ser el nombre que sea, se ocupa para despúes que vamos a 
      routes: {
        '/homepage': (context)=>HomePage(),
        '/introductionPage': (context)=>IntroductionPage(),
      }
    );
  }
}
