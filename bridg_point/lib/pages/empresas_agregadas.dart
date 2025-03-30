import 'package:bridg_point/components/residencia_tile.dart';
import 'package:bridg_point/data/models/residencia.dart';
import 'package:bridg_point/data/models/residencia_shop.dart';
import 'package:bridg_point/pages/detalles_empresa.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmpresasAgregadas extends StatefulWidget {
  const EmpresasAgregadas({super.key});
  
  @override
  State<EmpresasAgregadas> createState() => _EmpresasAgregadasState();
}


class _EmpresasAgregadasState extends State<EmpresasAgregadas> {
  
  void removeItem (Residencia residencia){
    Provider.of<ResidenciaShop>(context, listen: false).removeFromCard(residencia);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff4f4f4),
        title: Text('Empresas agregadas'),
        centerTitle: true,
      ),
      body: Consumer<ResidenciaShop>(
        builder: (context, value, child) =>
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: (context, index){
                        Residencia residencia = value.userCart[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => DetallesEmpresa(residencia: residencia)
                              )
                            );
                          },
                          child: ResidenciaTile(
                            residencia: residencia, 
                            onPressed: () => removeItem(residencia),
                            addRemoveIcon: Icon(Icons.remove_circle),        
                          )
                        );
                      }  
                    ) 
                  )
                ],
              ),
            )
          ),
      ),
    );
  }
}