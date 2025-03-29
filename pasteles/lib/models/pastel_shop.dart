
import 'package:flutter/material.dart';
import 'package:pasteles/models/pasteles.dart';

class PastelShop extends ChangeNotifier {
  //pastel list
  final List<Pasteles> _shop = [
    //coffee of chiapas
    Pasteles(
      name: 'Pastel de Chocolate', 
      price: '120.00', 
      imagePath: 'lib/images/chocolate.jpg'
    ),
    //coffee of guerrero
    Pasteles(
      name: 'Pastel de tres leches', 
      price: '140.00', 
      imagePath: 'lib/images/leches.jpg'
    ),
    //coffee of oaxaca
    Pasteles(
      name: 'Pastel de manzana', 
      price: '143.00', 
      imagePath: 'lib/images/manzana.jpg'
    ),
    //cafe of veracruz
    Pasteles(
      name: 'Pastel estilo Futbol', 
      price: '189.00', 
      imagePath: 'lib/images/futbol.jpg'
    ),

  ];
  //user cart
  // ignore: prefer_final_fields
  List<Pasteles> _userCart = [];

  //get user cart
  List<Pasteles> get pastelShop => _shop;

  //add items to a cart 
  List<Pasteles> get userCart => _userCart;

  //remove item from a cart 
  void addItemToCart(Pasteles pastel){
    _userCart.add(pastel);
    notifyListeners();
  }

  void removeFromCart(Pasteles pastel){
    _userCart.remove(pastel);
    notifyListeners();
  }

}