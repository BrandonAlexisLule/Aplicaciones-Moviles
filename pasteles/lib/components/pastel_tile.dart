import 'package:flutter/material.dart';
import 'package:pasteles/models/pasteles.dart';


class PastelTile extends StatelessWidget{
  final Pasteles pastel;
  final Icon addRemoveIcon;
  final Function()? onPressed;
  const PastelTile(
    {super.key,
    required this.pastel,
    required this.onPressed,
    required this.addRemoveIcon
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
        title: Text(pastel.name),
        subtitle: Text(pastel.price),
        leading: Image.asset(pastel.imagePath, width: 100, height: 100, fit: BoxFit.cover),
        trailing: IconButton(onPressed: onPressed, icon: addRemoveIcon),
      ), 
    ); 
  }
}