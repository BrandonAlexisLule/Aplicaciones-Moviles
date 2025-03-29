import 'package:flutter/material.dart';

class ActualizarNavegacionProvider extends ChangeNotifier {
  int _paginaIndice = 1;
  int get paginaIndice => _paginaIndice;

  void actualizarIndice(int valor){
    _paginaIndice = valor;
    notifyListeners();
  }
}