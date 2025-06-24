import 'package:flutter/material.dart';

import 'first intro class.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'firstpage.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  PageController pagecontroller=PageController();
  List<String>img=['asset/imges2/wellcom.webp','asset/imges2/delivery.webp','asset/imges2/coofe.jpg'];
  List<String>txt=['Wellcome To Our Application',  'We have a delivery service ','  10% Discount call us'];
  bool  islastpage=false;
 bool isnextpage=false;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Stack(

        children: [
      PageView(
        onPageChanged: (v){
      setState(() {
      islastpage=(v==2);
      isnextpage=(v==2||v==1);
      });
        },
        controller: pagecontroller,
      children:
      /*FirstIntroClass(img:'asset/imges2/wellcom.jpg' , txt: 'Wellcome To Our Application'),
      FirstIntroClass(img:'asset/imges2/delivery.webp' , txt: 'We have a delivery service .contact us'),
      FirstIntroClass(img:'asset/imges2/dicount.jpeg' , txt: '50% Discount'),*/
        img.map((e)=>
        FirstIntroClass(img:e , txt:txt[img.indexOf(e)])
        ).toList(),




      ),

      Container(
          alignment: Alignment(0, 0.8),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                isnextpage?   GestureDetector(
                    onTap: (){
                      pagecontroller.previousPage(duration: Duration(microseconds: 300), curve:Curves.bounceIn);
                    },
                    child: Text(" P R E V I O U S",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                )
                    :GestureDetector(
                    onTap: (){
                      pagecontroller.jumpToPage(2);
                    },
                    child: Text("S K I P",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                ),//last page
                SmoothPageIndicator(controller: pagecontroller, count: 3,

                ),//pakge
                islastpage?    GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushAndRemoveUntil((MaterialPageRoute(builder:(context)=>loginclass() )),
                              (route)=>false
                      );
                    },
                    child: Text("D O N E",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                )
                    :GestureDetector(
                    onTap: (){
                      pagecontroller.nextPage(duration: Duration(microseconds: 300), curve:Curves.bounceIn);
                    },
                    child: Text("N E X T",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),)),

              ],

            ),
          ))
         ],
      ),
        backgroundColor:Color((0xFFEfaebd6)),
      ),
    );
  }
}
