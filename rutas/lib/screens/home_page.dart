import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        backgroundColor: Colors.green[200],
        centerTitle: true,
        title: Text('Pastelería La Choys', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Text('Nuestros especiales del mes de marzo', style: TextStyle(fontSize: 30, letterSpacing: 4),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  color: Colors.grey[200],
                  elevation: 10,
                  margin: EdgeInsets.all(15),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('Pastel de chocolate'),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/img/cake_choco.jpg', fit: BoxFit.cover, width: 200, height: 200),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child:                             Text('\$243.50 MXN', style: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.bold, fontSize: 22)),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(top: 15, left: 20),
                              child: ElevatedButton(                              
                                onPressed: (){}, 
                                child: Row(
                                  children: [
                                    Text('Agregar al carrito', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2
                                    )),
                                    Icon(Icons.shopping_cart, size: 30,)
                                  ],
                                )
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey[200],
                  elevation: 10,
                  margin: EdgeInsets.all(15),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('Pastel de chocolate'),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/img/cake_choco.jpg', fit: BoxFit.cover, width: 200, height: 200),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child:                             Text('\$243.50 MXN', style: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.bold, fontSize: 22)),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(top: 15, left: 20),
                              child: ElevatedButton(                              
                                onPressed: (){}, 
                                child: Row(
                                  children: [
                                    Text('Agregar al carrito', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2
                                    )),
                                    Icon(Icons.shopping_cart, size: 30,)
                                  ],
                                )
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey[200],
                  elevation: 10,
                  margin: EdgeInsets.all(15),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('Pastel de chocolate'),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/img/cake_choco.jpg', fit: BoxFit.cover, width: 200, height: 200),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child:                             Text('\$243.50 MXN', style: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.bold, fontSize: 22)),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(top: 15, left: 20),
                              child: ElevatedButton(                              
                                onPressed: (){}, 
                                child: Row(
                                  children: [
                                    Text('Agregar al carrito', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2
                                    )),
                                    Icon(Icons.shopping_cart, size: 30,)
                                  ],
                                )
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text('Los más buscados', style: TextStyle(fontSize: 30, letterSpacing: 4),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  color: Colors.grey[200],
                  elevation: 10,
                  margin: EdgeInsets.all(15),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('Pastel de chocolate'),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/img/cake_choco.jpg', fit: BoxFit.cover, width: 200, height: 200),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child:                             Text('\$243.50 MXN', style: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.bold, fontSize: 22)),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(top: 15, left: 20),
                              child: ElevatedButton(                              
                                onPressed: (){}, 
                                child: Row(
                                  children: [
                                    Text('Agregar al carrito', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2
                                    )),
                                    Icon(Icons.shopping_cart, size: 30,)
                                  ],
                                )
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey[200],
                  elevation: 10,
                  margin: EdgeInsets.all(15),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('Pastel de chocolate'),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/img/cake_choco.jpg', fit: BoxFit.cover, width: 200, height: 200),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child:                             Text('\$243.50 MXN', style: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.bold, fontSize: 22)),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(top: 15, left: 20),
                              child: ElevatedButton(                              
                                onPressed: (){}, 
                                child: Row(
                                  children: [
                                    Text('Agregar al carrito', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2
                                    )),
                                    Icon(Icons.shopping_cart, size: 30,)
                                  ],
                                )
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey[200],
                  elevation: 10,
                  margin: EdgeInsets.all(15),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('Pastel de chocolate'),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/img/cake_choco.jpg', fit: BoxFit.cover, width: 200, height: 200),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child:                             Text('\$243.50 MXN', style: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.bold, fontSize: 22)),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(top: 15, left: 20),
                              child: ElevatedButton(                              
                                onPressed: (){}, 
                                child: Row(
                                  children: [
                                    Text('Agregar al carrito', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2
                                    )),
                                    Icon(Icons.shopping_cart, size: 30,)
                                  ],
                                )
                              ),
                            )
                          ],
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