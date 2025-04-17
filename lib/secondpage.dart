

import 'package:flutter/material.dart';
class scondpageclass extends StatefulWidget {
  const scondpageclass({super.key});

  @override
  State<scondpageclass> createState() => _scondpageclassState();
}
List<String>sweet=['asset/imges2/brownie.jpg','asset/imges2/cookies.jpg','asset/imges2/Lotus cheesecake.jpg','asset/imges2/red velvet cheesecake.jpg','asset/imges2/Tiramisu.jpg'];
List<String>name2=['Brownie(3jd)','Cookies(2jd)','cheesecake(3jd)','Redvelvetcake(4jd)','Tiramisu(4j)'];
class _scondpageclassState extends State<scondpageclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:     Color(0xFFEfaebd6),
        title: Row(
          children: [

          ],
        ),
      ),
      body: Column(
        children: [
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


                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(sweet[index]),
                                    fit: BoxFit.cover


                                ),
                              ),
                              height: 120,
                              width: double.infinity,
                            ),

                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Text(name2[index],
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
      ),
      backgroundColor:     Color(0xFFEfaebd6),
    );
  }
}









