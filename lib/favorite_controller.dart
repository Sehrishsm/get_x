

import 'package:get/get.dart';

class FavoriteController extends GetxController{

  RxList<String> fruitList = ['Orange','Apple', 'Mangoes','Banana'].obs;
  RxList tempFruitList = [].obs;

addToFav(String value){
  tempFruitList.add(value);
}
  removeToFav(String value){
    tempFruitList.remove(value);
  }
}