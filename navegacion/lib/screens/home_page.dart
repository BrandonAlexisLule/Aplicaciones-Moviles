import 'package:flutter/material.dart';
import 'package:navegacion/providers/update_navigator_bar_provider.dart';
import 'package:navegacion/screens/acerca_de.dart';
import 'package:navegacion/screens/configuracion.dart';
import 'package:navegacion/widgets/custom_navigation_bar.dart';
import 'package:navegacion/screens/nosotros.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    //Como pasar el valor value a la clase _HomePage
    return Consumer<UpdateNavigatorBarProvider>(
      builder:(context, value, child) => Scaffold(
      bottomNavigationBar: CustomNavigationBar(
      ),
      body: _HomePage(value: value,),
    ));
  }
}

class _HomePage extends StatelessWidget {
  UpdateNavigatorBarProvider value;
  
  //Le quitamos el const porque se 
  _HomePage({required this.value});
  

  @override
  Widget build(BuildContext context) {
    

    //Se va a controlar con la variable indiceActual
    switch(value.indicePagina){
      case 0:
        return Configuracion();
      case 1: 
          return AcercaDe();
      case 2: 
          return Nosotros();
      default:
        return HomePage();
    }
  }
}