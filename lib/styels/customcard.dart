import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customcard extends StatefulWidget {
  IconData? icons;
  String number;
 Customcard({ this.icons,required this.number});

  @override
  State<Customcard> createState() => _CustomcardState();
}

class _CustomcardState extends State<Customcard> {
  @override
  Widget build(BuildContext context) {
    return Card(
color:   Color(0xcdf3d5b3),
      child: Container(
        height: MediaQuery.of(context).size.height/5,
        color: Color(0xFFEfaebd6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
         Container(
           height: MediaQuery.of(context).size.height/8,
           width: MediaQuery.of(context).size.width/8,
           decoration: BoxDecoration(
             color: Colors.green,
             shape: BoxShape.circle
           ),

             child: Icon(Icons.call)),
            Text(widget.number,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}

