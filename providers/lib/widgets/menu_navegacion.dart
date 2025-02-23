import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/providers/actualizar_navegacion_provider.dart';

class MenuNavegacion extends StatelessWidget {
  const MenuNavegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActualizarNavegacionProvider>(
      builder: (context, navProvider, child) => BottomNavigationBar(
        //llamamos a la propiedad currentIndex para definir que pestaña es la que se encuentra activa
        currentIndex: navProvider.pageIndex,

        //Cambia el color del ícono cuando está o no seleccionado
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        //Tiene un tamaño específico al momento de seleccionar el ícono
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 30),

        onTap: (value){
          //
          navProvider.actualizarIndice(value);
          final indiceActual = context.read<ActualizarNavegacionProvider>();
          indiceActual.actualizarIndice(value);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 40,), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.airplanemode_active, size: 40,), label: 'Mis reservas'),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 40,), label: 'Contacto')
        ]
      ),
    );
  }
}