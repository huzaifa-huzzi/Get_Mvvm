import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:getx_mvvm/data/Network/base_api_services.dart';
import 'package:getx_mvvm/data/app_exception.dart';
import 'package:http/http.dart' as http;


class NetworkApiServices extends BaseApiServices {

  @override
  Future<dynamic> getApi(String url)async{

    if(kDebugMode){
      print(url);
    }

    dynamic responseJson;

    try{
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);

    }on SocketException{
      throw InternetException('');
    }on RequestTimeout{
      throw RequestTimeout('');
    }

    return responseJson;


  }

  @override
  Future<dynamic> postApi(var data,String url)async{

    if(kDebugMode){
      print(url);
      print(data);
    }

    dynamic responseJson;

    try{
      final response = await http.post(Uri.parse(url),
        // if Form data so it will be  body :data
        body: jsonEncode(data)
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);

    }on SocketException{
      throw InternetException('');
    }on RequestTimeout{
      throw RequestTimeout('');
    }

    return responseJson;


  }



  dynamic returnResponse(http.Response response){
    switch(response.statusCode ){
      case 200 :
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400 :
        throw InvalidUrl('');
      default:
        FetchDataException('Error accoured while communicating with server${response.statusCode}');
    }

  }


}