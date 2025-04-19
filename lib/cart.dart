import 'package:flutter/material.dart';
import 'package:midproject2/product.dart';


class cartclass extends StatefulWidget {
 final List<product> favoriteproducts;
  cartclass({required this.favoriteproducts}) ;

  @override
  State<cartclass> createState() => _cartclassState();
}

class _cartclassState extends State<cartclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cart"),

      ),
      body: ListView.builder(
          itemCount: widget.favoriteproducts.length,

          itemBuilder:(context,index){
            return Card(
              child: ListTile(
                leading:Image.asset(widget.favoriteproducts[index].img) ,
                title: Text(widget.favoriteproducts[index].name),
                subtitle: Text("\$${widget.favoriteproducts[index].price.toString()}"),
              ),
            );
          }),
    );
  }
}



