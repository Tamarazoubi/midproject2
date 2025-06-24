import 'package:flutter/material.dart';
import 'package:midproject2/cart.dart';
import 'package:midproject2/firstpage.dart';
import 'package:midproject2/product.dart';
import 'package:midproject2/secondpage.dart';

import 'Textflield.dart';
import 'homepage.dart';
class navgtionbarclass extends StatefulWidget {
  const navgtionbarclass({super.key});

  @override
  State<navgtionbarclass> createState() => _navgtionbarclassState();
}


class _navgtionbarclassState extends State<navgtionbarclass> {
  @override
  int indix=0;



  List<Widget>listofwidget=[




    homepageClass(),
    scondpageclass(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:BottomNavigationBar(

      items: [

        BottomNavigationBarItem(icon: Icon(Icons.local_drink),label:"Drink" ),
        BottomNavigationBarItem(icon:Icon(IconData(0xf869, fontFamily: 'MaterialIcons')),label:"Sweet" ),
      ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.brown,
        onTap: (v){
       setState(() {
         indix=v;
       });

        },
currentIndex: indix,
      ),
      body: listofwidget[indix],
    );
  }
}
