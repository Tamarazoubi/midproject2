
import 'package:flutter/material.dart';
import 'package:midproject2/product.dart';

class fvprovider with ChangeNotifier{
  List<product>fvproduct=[];
  void togglefavorite(product item){
    if(fvproduct.contains(item)){
      fvproduct.remove(item);
    }
    else{
      fvproduct.add(item);
    }
    notifyListeners();
  }
  bool isfav(product item){
    return fvproduct.contains(item);
  }
}