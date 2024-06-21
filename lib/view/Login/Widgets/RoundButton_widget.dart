import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Resources/Components/RoundButton.dart';
import 'package:getx_mvvm/view_model/Controller/Login_Controller_view.dart';


class RoundbuttonWidget extends StatelessWidget {
  final formkey;
  RoundbuttonWidget({super.key, required this.formkey});

  final loginView = Get.put(LoginControllerView());

  @override
  Widget build(BuildContext context) {
    return Obx(() => RoundButton(
        width: 200,
        loading: loginView.loading.value,
        title: 'login'.tr, onPress: (){
      if(formkey.currentState!.validate()){
        loginView.loginApi();
      }


    }) );
  }
}
