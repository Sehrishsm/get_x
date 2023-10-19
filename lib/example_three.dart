import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/example3_controller.dart';
class ExampleThree extends StatefulWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {

  ExampleThreeController exampleThreeController = Get.put(ExampleThreeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Three'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notifications'),
             Obx(() =>  Switch(value: exampleThreeController.notification.value, onChanged: (value){
               exampleThreeController.setNotification(value);

             }),),
            ],
          ),
        ],
      ),
    );
  }
}
