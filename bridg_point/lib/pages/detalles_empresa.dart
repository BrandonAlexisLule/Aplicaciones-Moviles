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
      body: Container(
        color: Color(0xfff4f4f4),
        padding: EdgeInsets.only(bottom: 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
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
                        width: 150,
                        height: 150
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Divider(),
                //fila para el ícono y el texto
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)
                      ),         
                      child: Row(
                        children: [
                          Icon(Icons.business_center, color: Colors.white),
                        ],
                      ),
                    ),
                    Text('Empresa: ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),                    
                  ],
                ),
                
                //Separamos la información para que se muestre por debajo del ícono y el texto.
                Text(residencia.nombre, style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
                
                  
                Divider(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(Icons.location_on, color: Colors.white) 
                    ),
                    Expanded(child: Text(residencia.direccion, style: TextStyle(fontSize: 20)))
                    
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(Icons.access_time_filled, color: Colors.white) 
                    ),          
                    Text(residencia.horarioDeAtencion, style: TextStyle(fontSize: 20))
                  ],
                ),
                Divider(),
                

                Text('Contacto:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(Icons.email, color: Colors.white) 
                    ), 
                    Text('Correo: ${residencia.correo}', style: TextStyle(fontSize: 20))
                  ] 
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.green[700],
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(Icons.phone_in_talk, color: Colors.white) 
                    ),           
                    Text('Teléfono: ${residencia.telefono}', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(Icons.event_available_rounded, color: Colors.white) 
                    ),     
                    Text('Actividades:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  ]
                ),
                ...residencia.actividades.entries.map((entry) => Text('\t• ${entry.value}', style: TextStyle(fontSize: 20))),
            
              ],
            ),
          ),
        ), 
      ),
    );
  }
}