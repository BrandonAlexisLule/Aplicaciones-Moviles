import 'package:flutter/material.dart';
import 'package:navegacion/providers/update_navigator_bar_provider.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<UpdateNavigatorBarProvider>(
      builder: (context, value, child) => BottomNavigationBar(
      onTap: (value) {
        //obtener acceso a las funciones
                            //el contexto que vas a leer es el UpdateNavigationBarProvider
        final indiceActual = context.read<UpdateNavigatorBarProvider>();


        //usar las funciones
        indiceActual.actualizarIndice(value);
      },
      elevation: 16.0,


      //Para definir una lista, basta poner [].
      items:[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configuración'),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: 'Acerca de'),
      ]),
    );
  }
}