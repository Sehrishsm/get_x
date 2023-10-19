import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/example_three.dart';
import 'package:get_x/example_two.dart';
import 'package:get_x/hight_width.dart';
import 'package:get_x/home_screen.dart';
import 'package:get_x/image_picker_home.dart';
import 'package:get_x/language_change.dart';
import 'package:get_x/languages.dart';
import 'package:get_x/login_home.dart';
import 'package:get_x/navgation_routes.dart';
import 'package:get_x/screen_one.dart';
import 'package:get_x/state_management_home.dart';

import 'favorite_mark.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // locale: Locale('en''US'),
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginHomeScreen(),
      getPages: [
        GetPage(name: '/', page: ()=> NavigationRoutes()),
        GetPage(name: '/screenOne', page: ()=> ScreenOne()),
      ],
    );
  }
}

