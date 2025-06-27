import 'package:flutter/material.dart';
import 'package:midproject2/product.dart';
import 'package:midproject2/var.dart';

import 'customdrawer.dart';
class Bakeryitemes extends StatefulWidget {
  List<product>fav=[];
   Bakeryitemes({required this.fav});

  @override
  State<Bakeryitemes> createState() => _BakeryitemesState();
}

class _BakeryitemesState extends State<Bakeryitemes> {
  @override
  List <String>img = [
    'asset/imges2/bread1.jpg',
    'asset/imges2/cakes.webp',
    'asset/imges2/croissant.jpg',
    'asset/imges2/dount.jpg',
    'asset/imges2/mmm.jpg',

  ];
  List<bool>isfav =
  List.generate(5, (index) => false);


    List<String>name = [
      'bread(1jd) ',
      'cakes(3jd)',
      'croissant(2jd)',
      'dount(2jd)',
      'pastries(1jd)'

    ];
  List<product>allproduct = [
    product(img:  'asset/imges2/bread1.jpg', name: 'Bread', price: 1),
    product(
        img:'asset/imges2/cakes.webp',  name: 'cakes', price: 3),
    product(img:'asset/imges2/croissant.jpg' , name: 'croissant', price: 2),
    product(
        img:  'asset/imges2/dount.jpg',  name: 'dount', price: 2),

    product(
        img:   'asset/imges2/mmm.jpg', name: 'pastries', price: 1),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEfaebd6),
      ),
      backgroundColor: Color(0xFFEfaebd6),
      body: Padding(
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

                                IconButton(
                                  onPressed: () {


                                  }, icon: Container(

                                    child:  InkWell(
                                        child:  isfav[index] ? Icon(Icons.favorite,color: Colors.red,
                                        ) :Icon(Icons.favorite_outlined,
                                        ),
                                        onTap: (){
                                          setState(() {
                                            isfav[index]=!isfav[index];
                                            if(isfav[index]){
                                              favoriteproduct.add(allproduct[index]);
                                            }
                                            else{
                                              favoriteproduct.remove(allproduct[index]);
                                            }
                                          });

                                        }
                                    )
                                )
                                  ,
                                )
                              ],
                            ),

                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Text(name[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,

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

          ],
        ),
      ),
      drawer: Customdrawer(),

    );
  }

  Widget Listtilefun(Icon c, Text tx) {
    return ListTile(
      leading: c,
      title: tx,
    );
  }
}




