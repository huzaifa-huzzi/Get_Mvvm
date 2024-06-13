import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/view_model/Services/splash_scervices.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices services = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    services.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text('Course'.tr,textAlign: TextAlign.center,),
      ),
    );
  }
}
