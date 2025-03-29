import 'package:flutter/material.dart';
import 'package:rutas/data/models/pasteleria.dart';


class Newhomepage extends StatefulWidget {
  const Newhomepage({super.key});

  @override
  State<Newhomepage> createState() => _NewhomepageState();
}

class _NewhomepageState extends State<Newhomepage> {

  //Se va a usar cuando se inicizialice la app
  late Future<List<Pastel>> futurePastel;

  @override
  void initState() {
    super.initState();
    futurePastel = cargarPastel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings, color: Colors.white),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/img/logo.jpg'),
          )
        ],
        elevation: 2,
        shadowColor: Colors.black,
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Pastelería La Choys',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        //Texto que será el título del contenido de la pantalla
          Padding(
            padding: EdgeInsets.all(15),
            child: Text('Especiales del mes de marzo', style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 3
            )),

          ),
        //Cartas de los pasteles
          Expanded(
            child: FutureBuilder<List<Pastel>>(
              future: futurePastel, 
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError){
                  return Center(child: Text('Error ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty){
                  return Center(child: Text('No hay data disponible'));
                } else{
                  final pasteles = snapshot.data;
                  return ListView.builder(
                    itemCount: pasteles?.length,
                    itemBuilder: (context, index){
                      final pastel = pasteles?[index];
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          //columnas de 
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(               
                                    child: Card(
                                      child: Container(
                                        width: 200, //ancho
                                        height: 180, //altura                        
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          children: [
                                            Text(pastel!.nombre),
                                            Container(
                                              margin: EdgeInsets.all(10),
                                              child: Image.network(
                                                pastel.imagen, 
                                                width: 100, 
                                                height: 100, 
                                                fit: BoxFit.cover)
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('Precio: \$'),
                                                  Text(pastel.precio.toString()),
                                                  Text(' MXN', )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
            
                                ],
                              )
                            ],
                          ),
                        )
                      );
                    }
                  );
                }
              }
            ),
          ),
        ],
      )
    );
  }
}