import 'package:bridg_point/providers/actualizar_navegacion_provider.dart';
import 'package:flutter/material.dart';                        
import 'package:provider/provider.dart';

class MenuNavegacion extends StatelessWidget {  
  const MenuNavegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActualizarNavegacionProvider>(
      builder: (context, navProvider, child) => Container(
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 2)
            )
          ]
        ),
        child: BottomNavigationBar(
          //llamamos a la propiedad currentIndex para definir que pestaña es la que se encuentra activa
          currentIndex: navProvider.paginaIndice,
        
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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Empresas disponibles'),
            BottomNavigationBarItem(icon: Icon(Icons.check_box), label: 'Empresas agregadas'),

          ]
        ),
      ),
    );
  }
}