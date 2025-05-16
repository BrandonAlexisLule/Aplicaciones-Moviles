import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  //Final es una variable que se va a usar en el constructor
  //propiedades de la clase
  final IconData icono;
  final String hintText;
  final Color iconColor;
  final TextInputType keyboardType;
  
  //constructor
  const Inputs({

    required this.icono,
    required this.hintText,
    required this.iconColor,

    this.keyboardType = TextInputType.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(   
      style: TextStyle(
        fontSize: 20
      ),

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),

        iconColor: iconColor,
        prefixIcon: Icon(icono, size: 40, color: Colors.white,),

      )
    );
  }
}