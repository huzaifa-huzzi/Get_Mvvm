import 'package:get/get.dart';

class Languages extends Translations{

  @override
  Map<String, Map<String, String>> get keys =>{
    'en_US':{
      'email_hint':'Enter Email',
       'internet_exception' : 'we are unale to show results. \n Please check your connections',
       'General_Exception' : 'We are unable to process your request.\n Please try again',
      'Course' : 'Getx Mvvm Course',
    },
    'ur_Pk':{
      'email_hint':'ای میل اشارہ'
    }

  };



}