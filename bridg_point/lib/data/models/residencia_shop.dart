import 'package:bridg_point/data/models/residencia.dart';
import 'package:flutter/material.dart';

class ResidenciaShop extends ChangeNotifier {
  //lista de residencias
  List<Residencia> _shop = [];

  //Carrito del usuario
  final List<Residencia> _userCart = [];

  //get user cart
  List<Residencia> get residenciaShop => _shop;

  //add items to a cart
  List<Residencia> get userCart => _userCart;

  //Método para cargar residencias desde el JSON
  Future<void> cargarResidencia() async {
    try {
      List<Residencia> data = await cargarResidenciaDesdeJson();
      print('Residencias cargadas: ${data.length}'); // 👀 Ver cuántos datos se cargaron
      _shop = data;
      notifyListeners();
    } catch (e) {
      print('Error cargando residencias: $e'); // 🛑 Captura errores
    }
  }


  void addItemToCard(Residencia residencia){
    _userCart.add(residencia);
    notifyListeners();
  }

  void removeFromCard(Residencia residencia){
    _userCart.remove(residencia);
    notifyListeners();
  }


}