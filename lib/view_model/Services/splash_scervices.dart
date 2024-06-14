import 'dart:async';
import 'package:get/get.dart';
import 'package:getx_mvvm/Resources/Routes/Routes_name.dart';
import 'package:getx_mvvm/view_model/user_prefrences/user_prefrences.dart';

class SplashServices {

  UserPrefrences userPrefrences = UserPrefrences();

  void isLogin(){

    userPrefrences.getUser().then((value){
       if(value.token!.isEmpty || value.token.toString() == 'null' ){
         Timer(const Duration(seconds: 3),() => Get.toNamed(RouteName.loginView));
       }else{
         Timer(const Duration(seconds: 3),() => Get.toNamed(RouteName.homeScreen));
       }

    });
  


  }


}