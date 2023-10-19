import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GetX Home'),
        backgroundColor: Colors.purple.shade100,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('GetX Dialog Alert'),
              subtitle: Text('GetX Dialog Alert with Getx'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are u sure? you want to delete this chat',
                  textConfirm: 'yes',
                  textCancel: 'no',
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('GetX Bottom Sheet'),
              subtitle: Text('GetX Dialog Alert with Getx'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple.shade50,
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                          onTap: (){
                        Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          onTap: (){
                         Get.changeTheme(ThemeData.dark());
                          },
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
    onPressed: (){
     Get.snackbar('Sm Graphics',' Do watch my portfolio',
     snackPosition: SnackPosition.BOTTOM,
     );

    },
    child: Icon(Icons.add),
    ),
    );
  }
}
