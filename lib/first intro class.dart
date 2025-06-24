import 'package:flutter/material.dart';

class FirstIntroClass extends StatefulWidget {
  String img;
  String txt;
 FirstIntroClass({required this.img,required this.txt});



  @override
  State<FirstIntroClass> createState() => _FirstIntroClassState();
}

class _FirstIntroClassState extends State<FirstIntroClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
Center(child: Image.asset(widget.img)),
    SizedBox(
      height: 50,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Center(
          child: Text(
            widget.txt,
            style: TextStyle(
              fontSize: 20,
               fontWeight: FontWeight.bold,
            ),

          ),
        ),
      ],
    ),
  ],
),
      backgroundColor:Color((0xFFEfaebd6)),
    );
  }
}
