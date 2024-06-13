import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Resources/Components/RoundButton.dart';
import 'package:getx_mvvm/Utils/Utils.dart';
import 'package:getx_mvvm/view_model/Controller/Login_Controller_view.dart';



class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final loginView = Get.put(LoginControllerView());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'.tr),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
         padding:const  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey ,
              child: Column(
                children: [
                  TextFormField(
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
                        border: OutlineInputBorder()
                    ),
                  ),
                  const   SizedBox(height: 20,),
                  TextFormField(
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
                        border: OutlineInputBorder()
                    ),
                  ),
                ],
              ),
            ),
          const   SizedBox(height: 40,),
            Obx(() => RoundButton(
                width: 200,
                loading: loginView.loading.value,
                title: 'login'.tr, onPress: (){
              if(_formKey.currentState!.validate()){
                 loginView.loginApi();
              }


            }) )

          ],
        ),
      ),
    );
  }
}
