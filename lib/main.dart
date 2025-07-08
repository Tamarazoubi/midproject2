import 'package:flutter/material.dart';
import 'package:midproject2/Homescreen.dart';
import 'package:midproject2/secondpage.dart';
import 'package:midproject2/splach_screen.dart';

import 'Textflield.dart';
import 'TotalPrice.dart';
import 'Welcome.dart';
import 'bakeryitemes.dart';
import 'callnumber.dart';
import 'ceditcard.dart';
import 'firstpage.dart';
import 'homepage.dart';
import 'navgtionbar.dart';



main(){
  runApp(myApp());
}




class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'routescreen2':(context)=>textfeildclass(),
        'routescreen3':(context)=>homepageClass(fav: [],),
        'routescreen4':(context)=>scondpageclass(fav: [],),
      'routescreen5':(context)=>Callnumber(),
      'routescreen6':(context)=> Navgtionbar(),
      'routescreen7':(context)=> Homescreen(),
      'routescreen8':(context)=> Bakeryitemes(fav: [],),
      'routescreen9':(context)=> Bakeryitemes(fav: [],),
      'routescreen10':(context)=> Ceditcard(),
      'routescreen11':(context)=>  Totalprice(favoriteproducts: [],),


      },
      debugShowCheckedModeBanner: false,
      home:SplachScreenClass()
    );
  }
}
