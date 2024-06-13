import 'package:get/get.dart';

class Languages extends Translations{

  @override
  Map<String, Map<String, String>> get keys =>{
    'en_US':{
       'internet_exception' : 'we are unale to show results. \n Please check your connections',
       'General_Exception' : 'We are unable to process your request.\n Please try again',
      'Course' : 'Getx Mvvm Course',
       'login' : 'Login',
       'email_hint' : 'Email',
       'password_hint' : 'Password',
       'Enter_email' : 'Enter Email',
       'Enter_password': 'Enter Password',

    },
    'ur_Pk':{
      'email_hint':'ای میل اشارہ'
    }

  };



}