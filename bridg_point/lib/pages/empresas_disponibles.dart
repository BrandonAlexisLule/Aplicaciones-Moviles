import 'package:bridg_point/components/residencia_tile.dart';
import 'package:bridg_point/data/models/residencia.dart';
import 'package:bridg_point/data/models/residencia_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmpresasDisponibles extends StatefulWidget {
  const EmpresasDisponibles({super.key});

  @override
  State<EmpresasDisponibles> createState() => _EmpresasDisponiblesState();
}

class _EmpresasDisponiblesState extends State<EmpresasDisponibles> {
  //Agregar al carrito
  void addToCart(Residencia residencia){
    Provider.of<ResidenciaShop>(context, listen: false).addItemToCard(residencia);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[100],
        title: Text('Empresas disponibles'),
        centerTitle: true,
      ),
      body: Consumer<ResidenciaShop>(
        builder: (context, value, child) => SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text('Vacantes para residencias disponibles'),
                Expanded(
                  child: value.residenciaShop.isEmpty ? 
                  Center(
                    child: CircularProgressIndicator()) : 
                    ListView.builder(
                      itemCount: value.residenciaShop.length,
                      itemBuilder: (context, index) {
                        Residencia residencia = value.residenciaShop[index];
                        return ResidenciaTile(
                          residencia: residencia, 
                          onPressed: () => addToCart(residencia),
                          addRemoveIcon: Icon(Icons.add_circle),        
                        );
                      }
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}