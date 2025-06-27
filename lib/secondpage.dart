

import 'package:flutter/material.dart';
import 'package:midproject2/customdrawer.dart';
import 'package:midproject2/product.dart';
import 'package:midproject2/var.dart';

import 'cart.dart';
class scondpageclass extends StatefulWidget {
  List<product>fav=[];
   scondpageclass({required this.fav});

  @override
  State<scondpageclass> createState() => _scondpageclassState();
}

class _scondpageclassState extends State<scondpageclass> {
  @override
  List<String>sweet=['asset/imges2/brownie.jpg','asset/imges2/cookies.jpg','asset/imges2/Lotus cheesecake.jpg','asset/imges2/red velvet cheesecake.jpg','asset/imges2/Tiramisu.jpg'];
  List<product>allproduct=[
    product(img: 'asset/imges2/brownie.jpg', name: 'brownie', price:3),
    product(img: 'asset/imges2/cookies.jpg', name: 'cookies', price:2),
    product(img: 'asset/imges2/Lotus cheesecake.jpg', name: 'cheesecake', price:3),
    product(img: 'asset/imges2/red velvet cheesecake.jpg', name: 'Redvelvetecake', price:4),
    product(img: 'asset/imges2/Tiramisu.jpg', name: 'Tiramisu', price:4),
  ];
  List<bool>isfav =
  List.generate(5, (index) => false);

  Widget build(BuildContext context) {
    final arg = ModalRoute
        .of(context)
        ?.settings
        .arguments;
    toString();
    Color c;
    List<String>name2=['Brownie(3jd)','Cookies(2jd)','cheesecake(3jd)','Redvelvetcake(4jd)','Tiramisu(4j)'];

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
                itemCount: sweet.length,
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
                                      image: AssetImage(sweet[index]),
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
                              child: Text(name2[index],
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
