import 'package:flutter/material.dart';
import 'package:rutas/pastel.dart';
import '../localservice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings, color: Colors.white),
        elevation: 2,
        shadowColor: Colors.black,
        backgroundColor: Colors.lightGreen[400],
        centerTitle: true,
        title: Text('Pastelería La Choys', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: FutureBuilder(
        future: Localservice().loadPastel(), 
        builder: (context, snapshot){
          if(snapshot.hasData){
            Pastel pastel = snapshot.data as Pastel;
            return Card( 
              child: Column(
                children: [
                  Text('Pastel: ${pastel.nombre}'),
                  Text('Descripción: ${pastel.descripcion}'),
                  Text('Precio: \$${pastel.precio}'),
                  Image.network(pastel.imagen)
                ],
              ),
            );
          } else {
            return Center(
              child: Text('Data no cargada'),
            );
          }
        }
      )
    );
  }
}