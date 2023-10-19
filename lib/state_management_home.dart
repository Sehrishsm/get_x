import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/counter_controller.dart';

class StateManagementHome extends StatefulWidget {
  const StateManagementHome({Key? key}) : super(key: key);

  @override
  State<StateManagementHome> createState() => _StateManagementHomeState();
}

class _StateManagementHomeState extends State<StateManagementHome> {

  final CounterController controller = Get.put(CounterController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorial'),
        backgroundColor: Colors.purple.shade100,
        centerTitle: true,
      ),
      body:Center(
        child: Obx(() =>  Text(controller.counter.toString(), style: TextStyle(fontSize: 60),),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            controller.incrementCounter();
        },
      ),
    );
  }
}
