import 'package:flutter/material.dart';
import 'package:getx_mvvm/Resources/app_url/app_url.dart';
import 'package:getx_mvvm/data/Network/network_api_services.dart';


class LoginRepository {

  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async{
    dynamic response = _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }


}