import 'package:flutter/material.dart';
import 'package:dot_curved_bottom_nav/dot_curved_bottom_nav.dart';
import 'package:midproject2/product.dart';
import 'package:midproject2/secondpage.dart';
import 'package:midproject2/var.dart';

import 'Homescreen.dart';
import 'bakeryitemes.dart';
import 'cart.dart';
import 'cartscreen.dart';
import 'favorite screen.dart';
import 'homepage.dart';
class Navgtionbar extends StatefulWidget {
  const Navgtionbar({super.key});

  @override
  State<Navgtionbar> createState() => _NavgtionbarState();
}
List<Widget>icons=[
  Icon(Icons.local_drink),

  Icon(Icons.favorite),
  Icon(IconData(0xf869, fontFamily: 'MaterialIcons')),
Icon(Icons.bakery_dining),


];
//List<product>fav1=[];
int indx=0;
List<Widget>screen=[
homepageClass(fav: favoriteproduct,
),
  Favoritescreen(favoriteproducts: favoriteproduct,),
  scondpageclass(fav: favoriteproduct,),
  Bakeryitemes(fav: favoriteproduct,),


];
class _NavgtionbarState extends State<Navgtionbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEE7BC91),
bottomNavigationBar:Container(
  height: 95,

  child: DotCurvedBottomNav(
    indicatorSize: 50,

    items:icons,
  backgroundColor:Color(0xcdEE7BC91),
  indicatorColor:Color(0xcdffedd8) ,
  selectedIndex: indx,
    onTap: (int newvalue){
    setState(() {
      indx=newvalue;
    });
    },

  ),
) ,
body: screen[indx],
    );

  }
}
