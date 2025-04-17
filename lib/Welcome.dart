import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Welcomeclass extends StatefulWidget {
  const Welcomeclass({super.key});

  @override
  State<Welcomeclass> createState() => _WelcomeclassState();
}

class _WelcomeclassState extends State<Welcomeclass> {

  @override
  Widget build(BuildContext context) {
    final arg=ModalRoute.of(context)?.settings.arguments;toString();
    return Scaffold(
      backgroundColor:     Color(0xFFEfaebd6),
    
      body: SafeArea(
        child: Column(
        
        
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: Text("Hello $arg",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold

                  ),),

              ),
            ),
           SizedBox(
             height: 20,
           ),
           Padding(
             padding: const EdgeInsets.all(10),
             child: Center(
              // child: Text("we will hope you get best service from  oue coffee",
             //  style: TextStyle(
             //    fontSize: 15,
               //  color: Colors.yellow[20],
              //  fontWeight: FontWeight.bold
           //    ),),
             ),
           ),
         SizedBox(
           height: 100,
         ),
         Lottie.network('https://lottie.host/526ad1f7-2aba-4d26-8219-9dbc5e7dd18d/gUI8MfBc09.json'),
SizedBox(
  height: 150,
),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('routescreen4');

            },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEE7BC91)
                ),
                child: Text("ViweItem",
                style: TextStyle(
                  color: Colors.brown
                ),),
            ),

          ],

        ),
      ),
      
    );
  }
}
