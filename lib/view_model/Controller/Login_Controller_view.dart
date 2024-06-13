import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Repository/login_respository.dart';
import 'package:getx_mvvm/Utils/Utils.dart';

class LoginControllerView extends GetxController {
  
  final _api = LoginRepository();

  // General Controllers
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

   // for the Focusing
  final emailFocus = FocusNode().obs;
  final passwordFocus = FocusNode().obs;

  RxBool loading = false.obs;




  void loginApi(){
    loading.value = true;
     Map data = {
       'email' : emailController.value.text,
       'password':passwordController.value.text
     };
    _api.loginApi(data).then((value){
      loading.value = false;
      Utils.SnackBar('Login Succesful', 'Login');
    }).onError((error,stackTrace){
      loading.value = false;
      Utils.SnackBar(error.toString(), 'Error');
    });
    
  }


}