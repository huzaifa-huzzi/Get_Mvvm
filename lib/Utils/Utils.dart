import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Resources/Colors/appColors.dart';

class Utils{

  static void fieldFocusChange(BuildContext context,FocusNode current,FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  static toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColor.blackColor
    );
  }

  static SnackBar(String message,String title){
    Get.snackbar(
        title,
        message,
    );
  }

}