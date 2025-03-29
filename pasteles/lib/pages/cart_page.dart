import 'package:flutter/material.dart';
import 'package:pasteles/components/pastel_tile.dart';
import 'package:pasteles/models/pastel_shop.dart';
import 'package:pasteles/models/pasteles.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove from cart
  void removeItem(Pasteles pastel){
    Provider.of<PastelShop>(context, listen: false).removeFromCart(pastel);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PastelShop>(
      builder: (context, value, child) =>
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Text('Tu carrito tiene: ', style: TextStyle(fontSize: 20),)
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index){
                      Pasteles eachPastel = value.userCart[index];
                      return PastelTile(
                        pastel: eachPastel, 
                        onPressed: () => removeItem(eachPastel),
                        addRemoveIcon: Icon(Icons.remove),
                      );
                    }  
                  ) 
                )
              ],
            ),
          )
        ),
    );
  }
}