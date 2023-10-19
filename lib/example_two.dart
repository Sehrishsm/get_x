import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/Example2_controller.dart';
class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Two'),
        backgroundColor: Colors.purple.shade100,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(() =>  Container(
            height: 200,
            width: 200,
            color: Colors.purple.withOpacity(exampleTwoController.opacity.value),
          ),),
          Obx(() => Slider(value: exampleTwoController.opacity.value, onChanged: (value){
           exampleTwoController.setOpacity(value);
          })),


        ],
      ),
    );
  }
}
