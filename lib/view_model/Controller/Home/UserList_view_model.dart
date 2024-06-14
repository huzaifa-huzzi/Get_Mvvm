

import 'package:get/get.dart';
import 'package:getx_mvvm/Models/Home/user_List_model.dart';
import 'package:getx_mvvm/Repository/Home_repository/UserList_repository.dart';
import 'package:getx_mvvm/data/response/status.dart';

class UserListViewModel extends GetxController{

  final api = UserListRepository();
  final userList = UserListViewModel().obs;

final RxrequestStatus = Status.Loading.obs;

 void setLoading(Status _value) => RxrequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value as UserListViewModel;

  void userListApi(){
    api.userListApi().then((value){
      setLoading(Status.Completed);
      setUserList(value);
    }).onError((error,stackTrace){
      setLoading(Status.Error);
    });
  }


}