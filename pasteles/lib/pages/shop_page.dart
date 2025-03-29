import 'package:flutter/material.dart';
import 'package:provider/provider.dart';  
import 'package:pasteles/components/pastel_tile.dart';
import 'package:pasteles/models/pastel_shop.dart';
import 'package:pasteles/models/pasteles.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add to cart
  void addToCart(Pasteles pastel){
    Provider.of<PastelShop>(context, listen: false).addItemToCart(pastel);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PastelShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Text('Pasteles de marzo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.pastelShop.length,
                  itemBuilder: (context, index) {
                    //get individual pastel
                    Pasteles eachPastel = value.pastelShop[index];
                    return PastelTile(
                      pastel: eachPastel,
                      onPressed: () => addToCart(eachPastel),
                      addRemoveIcon: Icon(Icons.add_circle)
                    );
                  },
              ))
            ],
          ),
        ),
      ),
    );
  }
}