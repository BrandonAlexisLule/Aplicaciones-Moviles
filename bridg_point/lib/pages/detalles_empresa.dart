import 'package:bridg_point/data/models/residencia.dart';
import 'package:flutter/material.dart';

class DetallesEmpresa extends StatelessWidget {
  final Residencia residencia;
  const DetallesEmpresa({super.key, required this.residencia});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la empresa'),

      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    residencia.imagen,
                    width: 100,
                    height: 100
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(residencia.nombre, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
              Text(residencia.direccion, style: TextStyle(fontSize: 18)),
              Text(residencia.horarioDeAtencion, style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text('Contacto:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text('Correo: ${residencia.correo}', style: TextStyle(fontSize: 16)),
              Text('Teléfono: ${residencia.telefono}', style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text('Actividades:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ...residencia.actividades.entries.map((entry) => Text('${entry.value}', style: TextStyle(fontSize: 16))),
          
            ],
          ),
        ), 
      ),
    );
  }
}