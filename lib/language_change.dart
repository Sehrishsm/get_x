import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LanguageChange extends StatefulWidget {
  const LanguageChange({Key? key}) : super(key: key);

  @override
  State<LanguageChange> createState() => _LanguageChangeState();
}

class _LanguageChangeState extends State<LanguageChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en', 'US'));
              }, child:Text('English')),
              SizedBox(
                width: 20,
              ),
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ur', 'PK'));
              }, child:Text('Urdu')),
            ],
          )
        ],
      ),
    );
  }
}
