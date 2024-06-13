import 'package:get/get.dart';
import 'package:getx_mvvm/Resources/Routes/Routes_name.dart';
import 'package:getx_mvvm/view/Splash_Screen.dart';

class AppRoutes{

  static appRoutes() => [
    GetPage(name:RouteName.splashScreen , page: () =>const  SplashScreen(),transition: Transition.leftToRight),
    // login Screen
    GetPage(name:RouteName.splashScreen , page: () =>const  SplashScreen()),

  ];

}