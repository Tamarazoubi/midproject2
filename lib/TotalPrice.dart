import 'package:flutter/material.dart';
import 'package:midproject2/product.dart';
import 'package:midproject2/var.dart';
class Totalprice extends StatefulWidget {
  final List<product> favoriteproducts;
   Totalprice({required this.favoriteproducts});

  @override
  State<Totalprice> createState() => _TotalpriceState();
}

class _TotalpriceState extends State<Totalprice> {

  double totalprice=0;

  @override
  Widget build(BuildContext context) {
    totalprice=0;
    setState(() {
      for(var product in favoriteproduct){
        totalprice+=product.price;
      }
    });

    return Scaffold(
      body: Column(

        children: [
SizedBox(
  height: 80,
),
          Center(
            child: Container(
//color: Colors.brow,
               child: Text("your price is :\$${totalprice.toString()}",
               style: TextStyle(fontSize: 24,
               fontWeight: FontWeight.bold),
               ),
             ),
          ),
SizedBox(
  height: 40,
),
InkWell(
  child: Container(

    height: 200,
    width: 500,
    color: Color(0xcde7bc91),
    child: Center(
      child: Text("Payment by card",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,

      ),),
    ),

  ),
  onTap: (){
    Navigator.of(context).pushNamed('routescreen10');
  },
),
          SizedBox(
            height: 70,
          ),
          InkWell(
            child: Container(
              height: 200,
              width: 500,
              color: Color(0xcde7bc91),
              child: Center(
                child: Text("Payment on delivery",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,

                  ),),
              ),

            ),
            onTap: (){
              Navigator.of(context).pushNamed('routescreen6');
            },
          )
        ],
      ),
      backgroundColor: Color(0xFFEfaebd6),
    );
  }
}
