import 'package:flutter/material.dart';
import 'package:midproject2/secondpage.dart';
import 'package:midproject2/splach_screen.dart';

import 'Textflield.dart';
import 'Welcome.dart';
import 'callnumber.dart';
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
        'routescreen3':(context)=>homepageClass(),
        'routescreen4':(context)=>scondpageclass(),
      'routescreen5':(context)=>Callnumber(),


      },
      debugShowCheckedModeBanner: false,
      home:homepageClass(),
    );
  }
}
