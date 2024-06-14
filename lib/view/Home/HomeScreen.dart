import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Resources/Routes/Routes_name.dart';
import 'package:getx_mvvm/Utils/Utils.dart';
import 'package:getx_mvvm/view_model/user_prefrences/user_prefrences.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  UserPrefrences userPrefrences = UserPrefrences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            userPrefrences.removeUser().then((value){
              Get.toNamed(RouteName.loginView);
            }).onError((error,stackTrace){
              Utils.toastMessage(error.toString());
            });
          }, icon:const Icon(Icons.logout) )
        ],
      ),
    );
  }
}
