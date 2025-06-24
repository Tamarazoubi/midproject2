import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:midproject2/styels/coler.dart';
import 'dart:async';

import 'on bordingscreen.dart';

class SplachScreenClass extends StatefulWidget {
  const SplachScreenClass({super.key});

  @override
  State<SplachScreenClass> createState() => _SplachScreenClassState();
}

class _SplachScreenClassState extends State<SplachScreenClass> {
  @override
  @override
  void initState() {
    Timer(
      Duration(
        seconds: 5
      ),
        (){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>OnbordingScreen()),(rotue)=>false);
        }
    );


    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/6,
              ),
              Lottie.network('https://lottie.host/34b9dadc-5986-4637-a907-4f7610c857c0/eCupwR5BI6.json'), //Lottie.network('https://lottie.host/34b9dadc-5986-4637-a907-4f7610c857c0/eCupwR5BI6.json'),

              CircularProgressIndicator(color:Color(0xCDffedd7) ,)
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xCDffedd7),
    );
  }
}
