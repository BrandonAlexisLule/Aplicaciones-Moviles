
class Pastel {
  //defino variables y su tipo de dato
  final String nombre;
  final String descripcion;
  final double precio;
  final String imagen;

  //Creo el constructor
  Pastel ({ 
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.imagen, 
  });
  
  //'Fabricamos' el pastel desde el JSON, recorremos con un map todas las propiedades del pastel.
  factory Pastel.fromJSON(Map<String, dynamic> json){
    return Pastel(
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      precio: (json['precio'] as num).toDouble(),
      imagen: json['imagen']
    );    
  }
}