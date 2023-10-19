import 'package:get/get.dart';
import 'package:flutter/material.dart';
class MediaQuerry extends StatefulWidget {
  const MediaQuerry({Key? key}) : super(key: key);

  @override
  State<MediaQuerry> createState() => _MediaQuerryState();
}

class _MediaQuerryState extends State<MediaQuerry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx tutorial'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
      ),
      body:   Container(

          height:Get.height *.1,
              color: Colors.purple,
        child: Center(child: Text('Center')),
      ),
    );
  }
}
