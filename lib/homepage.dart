import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class homepageClass extends StatefulWidget {
  const homepageClass({super.key});

  @override
  State<homepageClass> createState() => _homepageClassState();
}

class _homepageClassState extends State<homepageClass> {
  @override
  Widget build(BuildContext context) {
    final arg=ModalRoute.of(context)?.settings.arguments;toString();
    Color c;
    List <String>img = [
      'asset/imges/Espresso.jpg',
      'asset/imges/hot chocolate.jpg',
      'asset/imges/hot latte.jpg',
      'asset/imges/iced amricano.jpg',
      'asset/imges/icedlatte.jpg'
    ];
    List<String>name = [
      'Esprsso(2jd) ',
      'hotchocolate(3jd)',
      'hotlatte(2jd)',
      'icedamricano(2jd)',
      'icedlatte(3jd)'
    ];
    return Scaffold(
      backgroundColor:     Color(0xFFEfaebd6),
      body: SafeArea(child:

      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(

          children: [
           Row(
             children: [

             //  Lottie.network('https://lottie.host/526ad1f7-2aba-4d26-8219-9dbc5e7dd18d/gUI8MfBc09.jsonhttps://lottie.host/526ad1f7-2aba-4d26-8219-9dbc5e7dd18d/gUI8MfBc09.json'),
             ],
           ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          //   mainAxisAlignment: MainAxisAlignment.center,

                          children: [


                            Stack(
                              children: [Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(img[index]),
                                      fit: BoxFit.cover


                                  ),
                                ),
                                height: 120,
                                width: double.infinity,
                              ),

                                IconButton(onPressed: (){


                                }, icon: Container(

                                  child: Icon(Icons.favorite,
                                    color: Colors.black,
                                  ),
                                )
                                  ,
                                )
                  ],
                            ),

                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Text(name[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,

                                ),),

                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },

              ),
            ),
            ElevatedButton(onPressed: (){

              Navigator.of(context).pushNamed('routescreen5');



            },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEE7BC91)
                ),
                child: Text("Next",

                style: TextStyle(
                  color: Colors.black
                ),

                ),
         )
          ],
        ),
      )
      ),
    );
  }
}
