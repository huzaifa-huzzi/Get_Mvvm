import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Resources/Colors/appColors.dart';



class GeneralException extends StatefulWidget {
  final VoidCallback onPress;

  const GeneralException({super.key,required this.onPress});

  @override
  State<GeneralException> createState() => _GeneralExceptionState();
}

class _GeneralExceptionState extends State<GeneralException> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.symmetric(horizontal: 20),

      child: Column(
        children: [
          Icon(Icons.cloud_off,color:AppColor.redColor ,size: 50,),
          Padding(
            padding:const  EdgeInsets.only(top: 30),
            child: Center(
              child:Text('General_Exception'.tr,textAlign: TextAlign.center,) ,
            ),
          ),
          const  SizedBox(height: 20,),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                  color: AppColor.redColor,
                  borderRadius: BorderRadius.circular(50)

              ),
              child:const  Center(child: Text('Retry',style: TextStyle(fontSize: 20,color: Colors.white),)),
            ),
          )


        ],
      ),
    );
  }
}
