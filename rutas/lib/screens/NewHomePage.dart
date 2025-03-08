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
      body: FutureBuilder<List<Pastel>>(
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
                return ListTile(
                  title: Text(pastel!.nombre),
                  subtitle: Text(pastel.descripcion),
                );
              }
            );
          }
        }
      )
    );
  }
}