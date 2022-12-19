import 'package:apptask/presentation/pages/favorite_pages/favorite_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController{
  var numberOfList = 0.obs;
  var favList=<FavoriteModel>[].obs;
  List<FavoriteModel> favListModel=[];

  void addFavItem(FavoriteModel favoriteModel){
    if(!favList.contains(favoriteModel)){
      favList.add(favoriteModel);
      numberOfList++;
    }else{
      print('product already exist');
    }
    update();
  }

}