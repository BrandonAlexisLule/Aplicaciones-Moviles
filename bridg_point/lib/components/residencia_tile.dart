import 'package:bridg_point/data/models/residencia.dart';
import 'package:flutter/material.dart';

class ResidenciaTile extends StatelessWidget{
  final Residencia residencia;
  final Icon addRemoveIcon;
  final Function()? onPressed;

  const ResidenciaTile ({super.key,
    required this.residencia,
    required this.addRemoveIcon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink[200],
        borderRadius: BorderRadius.circular(15)
      ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: ListTile(
        title: Text(residencia.nombre),
        subtitle: Text(residencia.direccion),
        leading: Image.asset(residencia.imagen, width: 100, height: 100, fit: BoxFit.cover),
        trailing: IconButton(onPressed: onPressed, icon: addRemoveIcon),
      ), 
    ); 
  }
}