import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
      home:homepageClass() ,
    );
  }
}
