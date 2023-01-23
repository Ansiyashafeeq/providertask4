import 'package:flutter/material.dart';
class Fruitsprovider with ChangeNotifier{
  List Cart =[];
  List get favouritecart =>Cart;
  List imgc =[];
  List get favimages => imgc;

  void favourites(String itemnames ,String  itemimage){
    final favList = imgc.contains(itemimage);
    if(favList){
      imgc.remove(itemimage);
      Cart.remove(itemnames);
    }else{
      imgc.add(itemimage);
      Cart.add(itemnames);
    }

    notifyListeners();
  }
  bool icn_chge(String Icnname){
    final favicn =Cart.contains(Icnname);
    return favicn;



  }
}
