//Plantilla para leer un json de forma local o en la nube
//Promesa que va a tener una lista de un objeto Residencia
import 'dart:convert';

import 'package:flutter/services.dart';

Future<List<Residencia>> cargarResidenciaDesdeJson() async {
  //Cargar el archivo JSON
  final String respuesta = await rootBundle.loadString('assets/data/residencias.json');
  

  //Decodificar el JSON como una lista de mapas
  final List<dynamic> data = jsonDecode(respuesta);

  //Convertir la lista en una lista de objetos residencia
  List<Residencia> residencias = data.map((residencia) => Residencia.fromJSON(residencia)).toList();

  return residencias;
}

class Residencia {
  final String imagen;
  final String nombre;
  final String direccion;
  final String horarioDeAtencion;
  final String correo;
  final String telefono;
  final Map<String, String> actividades;

  Residencia ({
    required this.imagen,
    required this.nombre,
    required this.direccion,
    required this.horarioDeAtencion,
    required this.correo,
    required this.telefono,
    required this.actividades
  });

  factory Residencia.fromJSON(Map<String, dynamic> json){

    //Regresamos el constructor Residencia
    return Residencia(
        imagen: json['imagen'], 
        nombre: json['nombre'], 
        direccion: json['direccion'], 
        horarioDeAtencion: json['horarioDeAtencion'],
        correo: json['contacto']['correo'], 
        telefono: json['contacto']['telefono'], 
        actividades: Map<String, String>.from(json['actividades']) //convertido a Map<String, String>
    );
  }

}

