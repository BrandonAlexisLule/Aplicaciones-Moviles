import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

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
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text('Información del producto'),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nombre del pastel:'),
                  Image.asset(''),
                  Text('Precio: \$'),
                  Text('Descripción:'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (()=>{
                //ir a la página de inicio, cambiamos routeName por un string y ponemos la ruta '/nombre_variable'
                  Navigator.pushNamed(context, '/homepage'),
              }), child: Text('Regresar'), 
            ),
          ],
        )
      ),
    );
  }
}