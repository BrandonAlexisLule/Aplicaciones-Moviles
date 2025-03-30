import 'package:bridg_point/data/models/residencia.dart';
import 'package:bridg_point/pages/detalles_empresa.dart';
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
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15)
      ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(residencia.nombre,
              style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(residencia.direccion, 
              style: TextStyle(color: Colors.black45, fontWeight: FontWeight.normal)),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(5), child: SizedBox(
                child: Image.asset(residencia.imagen, width: 100, height: 100, fit: BoxFit.cover))
              ),
            trailing: IconButton(onPressed: onPressed, icon: addRemoveIcon),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(13),
                child: OutlinedButton(onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => DetallesEmpresa(residencia: residencia)
                    ),
                  );
                }, 
                child: Text('Más información', style: TextStyle(color: Colors.black),)),
              ),
            ],
          ),
        ],
      ), 
    ); 
  }
}