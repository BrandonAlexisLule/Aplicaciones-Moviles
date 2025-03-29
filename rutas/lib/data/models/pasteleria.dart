//Plantilla para leer un json de forma local o en la nube
//Promesa que va a tener una lista de un objeto Pastel
import 'dart:convert';

import 'package:flutter/services.dart';

Future<List<Pastel>> cargarPastel() async {
  //Final: cuando es una variable final, y se le asigna un valor, ya no se le puede modificar. Mientras en TS, se pueden mutar las variables
  //Nombramos una variable respuesta que va a recibir la lectura del archivo JSON.
  final String respuesta = await rootBundle.loadString('../lib/data/pasteleria.json'); 
  final Map<String, dynamic> data = jsonDecode(respuesta);
    

  List<dynamic> pastelJson = data['pasteles'];
  List<Pastel> pasteles = pastelJson.map((pastel) => Pastel.fromJSON(pastel)).toList();

  return pasteles;
}



class Pastel{
  String nombre;
  String descripcion;
  double precio;
  String imagen;


  Pastel({
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.imagen,
  });

  //Función que va a empaquetar toda la clase 
  /// Factory:
  /// Sirve para crear paquetes que van a envolver todo el contenido
  ///
  factory Pastel.fromJSON(Map<String, dynamic> json){
    //Regresamos el constructor (Pastel)
    return Pastel(
      nombre: json['nombre'], 
      descripcion: json['descripcion'], 
      precio: json['precio'],
      imagen: json['imagen']);
  }

}
