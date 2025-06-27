import 'package:flutter/material.dart';
import 'package:midproject2/styels/customcard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}
List<String>im=['asset/imges2/hotcold.webp','asset/imges2/sw.jpg','asset/imges2/bekary.webp'];

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [

                InkWell(child: Image.asset(im[0],fit: BoxFit.cover,),
                onTap: (){
                  setState(() {
    Navigator.of(context).pushNamed( 'routescreen3');

                  });
                }
                ,
                ),
            InkWell(child: Image.asset(im[1],fit: BoxFit.cover,),
              onTap: (){
              setState(() {
                Navigator.of(context).pushNamed( 'routescreen4');
              });
              },
            ),

            Image.asset(im[2],fit: BoxFit.cover,),
          ],
        ),
      ),

        backgroundColor:  Color(0xcdf3d5b3),

    );
  }
}
