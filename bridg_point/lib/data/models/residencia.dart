//Plantilla para leer un json de forma local o en la nube
//Promesa que va a tener una lista de un objeto Residencia
import 'dart:convert';

import 'package:flutter/services.dart';
Future<List<Residencia>> cargarResidenciaDesdeJson() async {
  try {
    // Cargar el archivo JSON
    final String respuesta = await rootBundle.loadString('lib/data/residencias.json');
    
    // Decodificar el JSON
    final List<dynamic> data = jsonDecode(respuesta);
    List<Residencia> residencias = data.map((residencia) => Residencia.fromJSON(residencia)).toList();


    return residencias;
  } catch (e) {

    return [];
  }
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

  factory Residencia.fromJSON(Map<String, dynamic> json) {
    return Residencia(
      imagen: json['imagen'] ?? '', 
      nombre: json['nombre'] ?? 'Sin nombre', 
      direccion: json['direccion'] ?? 'Sin dirección', 
      horarioDeAtencion: json['horario_de_atencion'] ?? 'No disponible', 
      correo: json['contacto']?['correo'] ?? '', // Manejo de nulos en contacto
      telefono: json['contacto']?['telefono'] ?? '', 
      actividades: json['actividades'] != null 
          ? Map<String, String>.from(json['actividades']) 
          : {}, // Si actividades es null, asignamos un mapa vacío
    );
  }
}

