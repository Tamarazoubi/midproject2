import 'package:flutter/material.dart';
import 'package:midproject2/styels/customcard.dart';
class Callnumber extends StatefulWidget {
  const Callnumber({super.key});

  @override
  State<Callnumber> createState() => _CallnumberState();
}

class _CallnumberState extends State<Callnumber> {
  @override
  List<String>Number=['0775958255','0796311094','0786597823','0776598732','07596225525'];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:    Color(0xFFEfaebd6),
        title: Center(
          child: Text("for delivery service",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,

          ),),
        ),
      ),
      body: ListView.builder(

        itemCount: Number.length,
        itemBuilder: (context,index) {

          return Customcard(number: Number[index]);
        }
          ),


  backgroundColor:  Color(0xcdf3d5b3),

    );

  }

}
