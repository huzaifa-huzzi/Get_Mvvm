import 'package:getx_mvvm/Models/login/Login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPrefrences  {


  Future<bool> saveUser(LoginViewModel responseModel)async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', responseModel.token.toString());
    return true;
  }

    Future<LoginViewModel> getUser() async {
      SharedPreferences sp = await SharedPreferences.getInstance();
      String? token = sp.getString('token');
      return LoginViewModel(

      );
    }
    //for removing the user
    Future<bool> removeUser() async {
      SharedPreferences sp = await SharedPreferences.getInstance();
      sp.clear();
      return true;
    }
  }

