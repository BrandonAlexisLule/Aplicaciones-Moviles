import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:rutas/pastel.dart';

class Localservice {
  Future<String> _loadPastelAsset() async {
    return await rootBundle.loadString('assets/data/pasteleria.json');
  }

  Future<Pastel> loadPastel() async {
    String jsonString = await _loadPastelAsset();
    final respuesta = jsonDecode(jsonString);
    return Pastel.fromJSON(respuesta);
    
  }
}