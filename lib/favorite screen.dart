import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:midproject2/favoritiesprovider.dart';
import 'package:midproject2/product.dart';
import 'package:midproject2/Homescreen.dart';
import 'package:midproject2/var.dart';
    
class Favoritescreen extends StatefulWidget {
 final List<product> favoriteproducts;
  const Favoritescreen({required this.favoriteproducts});

  @override
  State<Favoritescreen> createState() => _FavoritescreenState();
}

class _FavoritescreenState extends State<Favoritescreen> {
  @override
  double totalprice=0;

  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Color(0xFFEfaebd6),




    appBar: AppBar(
      backgroundColor:Color(0xFFEfaebd6),
    title: Center(child: Text("FavorIteItem",
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold
    ),),
    ),

    ),
    body:Stack(
      children:[GridView.builder(itemCount: favoriteproduct.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(context,index) {
        final item=favoriteproduct[index];
        totalprice+=item.price;
        return Card(

            child: Column(
              children: [
                Expanded(child: Image.asset(item.img,fit: BoxFit.cover,)),
                SizedBox(height: 8,),
                Text(item.name,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),),
                Text("\$${item.price.toString()}"
                    "",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ), ),

            ]

            ),

        );
          }),
    ],

    ),
        floatingActionButton: FloatingActionButton(onPressed:(){
      Navigator.of(context).pushNamed('routescreen11');

    },

            child: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(
                minHeight: 200,
                maxWidth: 50,
            ),
              width: 200,
              height: 200,

              child: Text("TotalPrice",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,

                ),
                textAlign: TextAlign.center,
              ),
            ),
          backgroundColor: Color(0xFFEE7BC91),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),

          ),
          elevation: 10,
          mini: false,
        ),



    );
    }
    }





