import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Models/login/Login_model.dart';
import 'package:getx_mvvm/Repository/login_respository.dart';
import 'package:getx_mvvm/Utils/Utils.dart';
import 'package:getx_mvvm/view_model/user_prefrences/user_prefrences.dart';

class LoginControllerView extends GetxController {
  
  final _api = LoginRepository();

  UserPrefrences userPrefrences = UserPrefrences();

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
      if(value['error'] == 'user not found'){
        Utils.SnackBar(value['error'], 'Login');
      }else{
        userPrefrences.saveUser(LoginViewModel.fromJson(value)).then((value){

        }).onError((error,stackTrace){
          
        });
        Utils.SnackBar('Login Succesful', 'Login');
      }

    }).onError((error,stackTrace){
      loading.value = false;
      Utils.SnackBar(error.toString(), 'Error');
    });
    
  }


}