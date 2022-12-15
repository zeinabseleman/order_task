
import 'package:get/get.dart';

class CartController extends GetxController{
  var incrementVal = 0.obs;

  void increment(){
    incrementVal.value++;
  }

  void decrement(){
    if(incrementVal.value<=0){

    }else{
      incrementVal.value--;
    }

  }
}