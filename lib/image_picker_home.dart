import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/image_picker_controller.dart';

class ImagePickerHome extends StatefulWidget {
  const ImagePickerHome({Key? key}) : super(key: key);

  @override
  State<ImagePickerHome> createState() => _ImagePickerHomeState();
}

class _ImagePickerHomeState extends State<ImagePickerHome> {
  @override
  ImagePickerController imagePickerController = Get.put(ImagePickerController());
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('image Picker'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
      ),
      body: Obx((){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage:imagePickerController.imagePath.isNotEmpty ?
              FileImage(File(imagePickerController.imagePath.toString())) : null,
            ),
          ),
          TextButton(onPressed: (){
            imagePickerController.getImage();
          }, child: Text('upload')),
        ],
      );
       }),
    );
  }
}
