import 'package:flutter/material.dart';

import 'Textflield.dart';
import 'ceditcard.dart';
import 'firstpage.dart';

class Customdrawer extends StatefulWidget {
  const Customdrawer({super.key});

  @override
  State<Customdrawer> createState() => _CustomdrawerState();
}

class _CustomdrawerState extends State<Customdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(


        backgroundColor: Color(0xFFEfaebd6),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery
                  .sizeOf(context)
                  .height / 5,
            ),
            SizedBox(
              height: MediaQuery
                  .sizeOf(context)
                  .height / 35,
            ),
            Container(

              child: CircleAvatar(
                backgroundColor: Colors.white38,
                child: Icon(Icons.person,
                  color: Colors.black,),
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('routescreen5');
                },
                child: Listtilefun(Icon(Icons.call), Text("Call us",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),),

                )


            ),

            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('routescreen10');
                },
                child: Listtilefun(Icon(Icons.credit_card), Text("Visa payment",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),),

                )
            ),

            InkWell(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context)=>loginclass()),
                        (Route<dynamic>route)=>false,
                  );
                },
                child: Listtilefun(Icon(Icons.logout), Text("Logout",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),),

                )
            ),
    ],
        )

    );
  }
  }
  Widget Listtilefun(Icon c,Text tx){
    return ListTile(
      leading:c ,
      title:tx ,
    );
}
