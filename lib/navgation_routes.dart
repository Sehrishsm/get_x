import 'package:flutter/material.dart';
import 'package:get_x/screen_one.dart';
import 'package:get/get.dart';
class NavigationRoutes extends StatefulWidget {
  const NavigationRoutes({Key? key}) : super(key: key);

  @override
  State<NavigationRoutes> createState() => _NavigationRoutesState();
}

class _NavigationRoutesState extends State<NavigationRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Routes'),
        backgroundColor: Colors.purple.shade100,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: TextButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenOne()));
            //  Get.to(ScreenOne(name: 'smgraphics',));
             Get.toNamed('/screenOne', arguments:[
           'smgraphics']);
          }, child: Text('Go to next Screen')))
        ],
      ),
    );
  }
}
