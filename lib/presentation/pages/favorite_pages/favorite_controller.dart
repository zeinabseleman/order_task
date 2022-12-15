import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController{
  var numberOfList = 0.obs;
  var favList=[].obs;
  List<int> selectedFav=[];

  void addFavItem(Widget product,int index){
    if(!favList.contains(product)){
      favList.add(product);
      numberOfList++;
      selectedFav.add(index);
    }else{
      print('product already exist');
    }
  }

}