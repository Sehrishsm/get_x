import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/favorite_controller.dart';

class FavoriteMark extends StatefulWidget {
  const FavoriteMark({Key? key}) : super(key: key);

  @override
  State<FavoriteMark> createState() => _FavoriteMarkState();
}

class _FavoriteMarkState extends State<FavoriteMark> {

  FavoriteController favoriteController = Get.put(FavoriteController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Mark'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
      ),
      body:ListView.builder(
        itemCount: favoriteController.fruitList.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                onTap: (){
                  if(favoriteController.tempFruitList.contains(favoriteController.fruitList[index].toString())){
                    favoriteController.removeToFav(favoriteController.fruitList[index].toString());
                  }else{
                    favoriteController.addToFav(favoriteController.fruitList[index].toString());
                  }
                },
                title: Text(favoriteController.fruitList[index].toString()),
                trailing: Obx(() => Icon(Icons.favorite_outline,color: favoriteController.tempFruitList.contains(favoriteController.fruitList[index].toString())? Colors.red
                    : Colors.white,),),
              ),
            );
          }
      )
    );
  }
}
