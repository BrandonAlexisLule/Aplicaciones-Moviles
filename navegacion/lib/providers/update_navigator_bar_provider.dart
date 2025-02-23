import 'package:flutter/material.dart';

                                        //hereda Cambio de Notificación
class UpdateNavigatorBarProvider extends ChangeNotifier {

  //Creamos una variable privada, lo que quiere decir que ningún otro archivo va a poder acceder a esta variable, 
  //para controlar el camnbio de pantalla
  int _indicePagina = 0; 

  //Indicamos en una función de flecha que se va a regresar el valor.
  int get indicePagina => _indicePagina;

  //La función recibe el parámetro int value y d
  void actualizarIndice(int value){

    _indicePagina = value;
    notifyListeners();

  }
}