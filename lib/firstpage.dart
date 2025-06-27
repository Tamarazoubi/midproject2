import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:midproject2/secondpage.dart';

import 'Textflield.dart';
import 'homepage.dart';
import 'navgtionbar.dart';
class loginclass extends StatefulWidget {
  const loginclass({super.key});

  @override
  State<loginclass> createState() => _loginclassState();
}

class _loginclassState extends State<loginclass> {
  @override
  int indix=0;

  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor:     Color(0xFFEfaebd6),
      appBar: AppBar(
        backgroundColor: Color(0xFFEfaebd6),

        title: Row(
          children: [Padding(
            padding: const EdgeInsets.all(50),

          ),
      ]
        ),
        ),
    body:




    Center(

          child: SingleChildScrollView(
    child: Column(

        children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
      color:   Color(0xFFEE7BC91),
        child: Text(" BLK Coffee",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,

          ),
        ),
      ),
    ),
    Lottie.network('https://lottie.host/34b9dadc-5986-4637-a907-4f7610c857c0/eCupwR5BI6.json'),
    ElevatedButton(onPressed: () {
      Navigator.of(context).pushNamed('routescreen2');
      IconButton(
          onPressed:(){
            Navigator.pop(context);
          } , icon: Icon(Icons.arrow_back));
    }
      ,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFEE7BC91)
      ),
     child:

    Text("login",
    style: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.black,

    ),),
         )
        ],
    ),
          ),
        ),
  //    bottomNavigationBar: navgtionbarclass(),
    );
  }
}
