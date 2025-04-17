import 'package:flutter/material.dart';
import 'package:midproject2/secondpage.dart';

import 'Textflield.dart';
import 'Welcome.dart';
import 'firstpage.dart';
import 'homepage.dart';



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
        'routescreen4':(context)=>scondpageclass()
       // 'routescreen5':(context)=>scondpageclass(),


      },
      debugShowCheckedModeBanner: false,
      home:loginclass(),
    );
  }
}
