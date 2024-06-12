import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Resources/Languages/languages.dart';
import 'package:getx_mvvm/Resources/Routes/Routes_Initiliazing.dart';
import 'package:getx_mvvm/view/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      title: 'Getx Mvvm Architecture',
      translations:Languages(),
      locale:const  Locale('en','US'),
      fallbackLocale:const Locale('en','US'),
      home:const  SplashScreen(),
      getPages:AppRoutes.appRoutes() ,
    );
  }
}

