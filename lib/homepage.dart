import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:midproject2/product.dart';
import 'package:midproject2/secondpage.dart';
import 'package:midproject2/var.dart';

import 'Textflield.dart';
import 'cart.dart';
import 'customdrawer.dart';
import 'navgtionbar.dart';
class homepageClass extends StatefulWidget {
  List<product>fav=[];
  homepageClass({required this.fav});

  @override

  State<homepageClass> createState() => _homepageClassState();
}

class _homepageClassState extends State<homepageClass> {


  @override


  List <String>img = [
    'asset/imges/Espresso.jpg',
    'asset/imges/hot chocolate.jpg',
    'asset/imges/hot latte.jpg',
    'asset/imges/iced amricano.jpg',
    'asset/imges/icedlatte.jpg'
  ];

  List<product>p=[product(img: 'asset/imges/Espresso.jpg', name:'Esprsso' , price: 2.0),
  product(img:'asset/imges/hot chocolate.jpg' , name:'hotchocolate', price: 3),
  product(img:'asset/imges/hot latte.jpg' , name: 'hotlatte', price: 2),
  product(img: 'asset/imges/iced amricano.jpg' , name:'icedamricano', price: 2),
  product(img: 'asset/imges/icedlatte.jpg', name: 'icedlatte', price: 3)];

  List<bool>isfav =
  List.generate(5, (index) => false);

  Widget build(BuildContext context) {
    final arg = ModalRoute
        .of(context)
        ?.settings
        .arguments;
    toString();
    Color c;

     List<String>name = [
      'Esprsso(2jd) ',
      'hotchocolate(3jd)',
      'hotlatte(2jd)',
      'icedamricano(2jd)',
      'icedlatte(3jd)'
    ];

    List<product>allproduct = [
      product(img: 'asset/imges/Espresso.jpg', name: 'Esprsso', price: 2),
      product(
          img: 'asset/imges/hot chocolate.jpg', name: 'hotchocolate', price: 3),
      product(img: 'asset/imges/hot latte.jpg', name: 'hotlatte', price: 2),
      product(
          img: 'asset/imges/iced amricano.jpg', name: 'icedamricano', price: 2),
      product(img: 'asset/imges/icedlatte.jpg', name: 'icedlatte', price: 3),
    ];


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
