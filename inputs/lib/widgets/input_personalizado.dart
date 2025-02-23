import 'package:flutter/material.dart';

class InputPersonalizado extends StatelessWidget {
  //Final es una variable que se va a usar en el constructor
  final String labelText; //propiedades de la clase
  final IconData icono;
  final String hintText;
  final Color iconColor;
  final IconData suffixIcon;
  final TextInputType keyboardType;
  

  const InputPersonalizado({
    required this.labelText,
    required this.icono,
    required this.hintText,
    required this.iconColor,
    required this.suffixIcon,
    this.keyboardType = TextInputType.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(   
      keyboardType: TextInputType.text,        
      decoration: InputDecoration(
        
        hintText: hintText,
        iconColor: iconColor,
        //label: Text('Cual es tu nombre')
        labelText: labelText,
        helper: Text('Este campo no se te olvide escribirlo bien'),
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        //errorText:  'Error 404',
        //Le pasamos la data del ícono, con el Widget Icon, adentro de los paréntesis, le ponemos el parámetro en el que va a recibir la data.
        prefixIcon: Icon(icono),
        suffixIcon: Icon(suffixIcon)
      )
    );
  }
}