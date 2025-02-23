import 'package:flutter/material.dart';

//1. Crear un provider
class ActualizarNavegacionProvider extends ChangeNotifier {
  //Se inicializa en 0 la variable que almacenará el índice de la pantalla actual.
  int _pageIndex = 1;

  //Se obtiene el valor por defecto de la variable privada
  int get pageIndex => _pageIndex;

  //Se define un método llamado actualizarIndice, que recibe un entero(valor) y actualiza _pageIndex
  void actualizarIndice(int valor){
    _pageIndex = valor;
    //tiene que notificar a los widgets que se va a actualizar el valor.
    notifyListeners();
  }
}