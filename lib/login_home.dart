import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/login_controller.dart';

class LoginHomeScreen extends StatefulWidget {
  const LoginHomeScreen({Key? key}) : super(key: key);

  @override
  State<LoginHomeScreen> createState() => _LoginHomeScreenState();
}

class _LoginHomeScreenState extends State<LoginHomeScreen> {

  LoginController loginController = Get.put(LoginController());

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginController.emailController.value,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextFormField(
              controller: loginController.passwordController.value,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(
              height: 50,
            ),
           Obx(() {
             return InkWell(
               onTap: (){
                 loginController.loginApi();
               },
               child: loginController.loading.value ? CircularProgressIndicator() : Container(
                 height: 45,

                 decoration: BoxDecoration(
                   color: Colors.purple.shade100,
                   borderRadius: BorderRadius.circular(8),
                 ),
                 child: Center(
                   child: Text('Login'),
                 ),
               ),
             );
           })
          ],
        ),
      ),
    );
  }
}
