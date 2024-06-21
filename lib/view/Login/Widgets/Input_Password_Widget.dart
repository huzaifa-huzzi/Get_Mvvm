import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Utils/Utils.dart';
import 'package:getx_mvvm/view_model/Controller/Login_Controller_view.dart';


class InputPasswordWidget extends StatelessWidget {
   InputPasswordWidget({super.key});

  final loginView = Get.put(LoginControllerView());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginView.passwordController.value,
      focusNode: loginView.passwordFocus.value,
      obscureText: true,
      validator: (value){
        if(value!.isEmpty){
          Utils.SnackBar('Enter_password'.tr,'Enter');
        }
      },
      decoration: InputDecoration(
          hintText: 'password_hint'.tr,
          border:const  OutlineInputBorder()
      ),
    );
  }
}
