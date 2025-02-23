import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        //ClipOval ayuda a darle en forma de círculo/óvalo al leading
        leading: ClipOval(
          child: Image.asset('assets/img/norte.png', width: 40,height: 40, fit: BoxFit.cover,)
        ),
        centerTitle: true,
        title: Text('Viajeros del Norte', style: TextStyle(letterSpacing: 2, color: Colors.white, fontSize: 25)),
        //Actions es un arreglo quee tiene al IconButton para poner íconos de la aplicación para acceder a la derecha.
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white, 
            onPressed: () {}
          ,)
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5)
            ),
            child: Text('Ofertas de viajes económicas!', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

            )),
          ),
          //Contenedor que tiene de contenido una imagen 'volaris.png'
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Image.asset('assets/img/volaris.png', width: 50, height: 50, alignment: Alignment.topLeft,),
          ),
          
          //Generar scroll al desplazar a la derecha
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
            //Cartas desplazables a la derecha
            child: Row(
              children: [
                //Contenido dentro de la carta en forma de columna
                Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        Image.asset('assets/img/cancun.jpg', width: 200, height: 200, fit: BoxFit.cover),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text('Información aquí'),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        Image.asset('assets/img/chetumal.jpg', width: 200, height: 200, fit: BoxFit.cover),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text('Información aquí'),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        Image.asset('assets/img/chihuahua.jpg', width: 200, height: 200, fit: BoxFit.cover,),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text('Información aquí'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Image.asset('assets/img/aeromexico.png', width: 50, height: 50, alignment: Alignment.topLeft,),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
            //Cartas desplazables a la derecha
            child: Row(
              children: [
                //Contenido dentro de la carta en forma de columna
                Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        Image.asset('assets/img/cancun.jpg', width: 200, height: 200, fit: BoxFit.cover),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text('Información aquí'),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        Image.asset('assets/img/chetumal.jpg', width: 200, height: 200, fit: BoxFit.cover),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text('Información aquí'),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        Image.asset('assets/img/chihuahua.jpg', width: 200, height: 200, fit: BoxFit.cover,),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text('Información aquí'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}