import 'package:getx_mvvm/Models/Home/user_List_model.dart';
import 'package:getx_mvvm/Resources/app_url/app_url.dart';
import 'package:getx_mvvm/data/Network/network_api_services.dart';


class UserListRepository {

  final _apiService = NetworkApiServices();

  Future<UserListModel> userListApi() async{
    dynamic response =await  _apiService.getApi( AppUrl.userListApi);
    return response;
  }


}