import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Utils/Utils.dart';
import 'package:getx_mvvm/view_model/Controller/Login_Controller_view.dart';

class InputEmailWidget extends StatelessWidget {
   InputEmailWidget({super.key});

  final loginView = Get.put(LoginControllerView());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginView.emailController.value,
      focusNode: loginView.emailFocus.value,
      validator: (value){
        if(value!.isEmpty){
          Utils.SnackBar('Enter_email'.tr,'Email');
        }
      },
      onFieldSubmitted: (value){
        Utils.fieldFocusChange(context, loginView.emailFocus.value, loginView.passwordFocus.value);
      },
      decoration: InputDecoration(
          hintText: 'email_hint'.tr,
          border: const OutlineInputBorder()
      ),
    );
  }
}
