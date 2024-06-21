import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Resources/Components/RoundButton.dart';
import 'package:getx_mvvm/Utils/Utils.dart';
import 'package:getx_mvvm/view/Login/Widgets/Input_Email_Widget.dart';
import 'package:getx_mvvm/view/Login/Widgets/Input_Password_Widget.dart';
import 'package:getx_mvvm/view/Login/Widgets/RoundButton_widget.dart';
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
                  InputEmailWidget(),
                  const   SizedBox(height: 20,),
                  InputPasswordWidget(),
                ],
              ),
            ),
          const   SizedBox(height: 40,),
            RoundbuttonWidget(formkey: _formKey),

          ],
        ),
      ),
    );
  }
}
