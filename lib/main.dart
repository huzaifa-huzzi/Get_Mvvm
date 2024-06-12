import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      home:const  SplashScreen(),
      getPages:AppRoutes.appRoutes() ,
    );
  }
}

