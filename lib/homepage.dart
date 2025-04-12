import 'package:flutter/material.dart';
class homepageClass extends StatefulWidget {
  const homepageClass({super.key});

  @override
  State<homepageClass> createState() => _homepageClassState();
}

class _homepageClassState extends State<homepageClass> {
  @override
  Widget build(BuildContext context) {
    List <String>img=['asset/imges/Espresso.jpg','asset/imges/hot chocolate.jpg','asset/imges/hot latte.jpg','asset/imges/iced amricano.jpg','asset/imges/icedlatte.jpg'
    ];
List<String>name=['Esprsso(2jd) ','hotchocolate(2.5jd)','hotlatte(2jd)','icedamricano(2jd)','icedlatte(3jd)'];
    return Scaffold(
      body: SafeArea(child:

      Column(
        children: [
          Expanded(
            child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: img.length,
                itemBuilder:(context,index){

                  return Card(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                                           //   mainAxisAlignment: MainAxisAlignment.center,
                      
                          children: [
                      
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                   image:AssetImage(img[index]),
                        fit: BoxFit.cover
                      
                      
                              ),
                            ),
                              height: 120,
                              width: double.infinity,
                            ),
                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Text(name[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                      
                              ),),
                      
                            )
                          ],
                        ),
                      ),
                    ),
                  );



                }


            ),
          )
        ],
      )

      ),
    );
  }
}
