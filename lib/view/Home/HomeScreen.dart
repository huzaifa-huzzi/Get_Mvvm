import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Resources/Routes/Routes_name.dart';
import 'package:getx_mvvm/Utils/Utils.dart';
import 'package:getx_mvvm/data/response/status.dart';
import 'package:getx_mvvm/view_model/Controller/Home/UserList_view_model.dart';
import 'package:getx_mvvm/view_model/user_prefrences/user_prefrences.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  UserPrefrences userPrefrences = UserPrefrences();

  final controller = Get.put(UserListViewModel());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            userPrefrences.removeUser().then((value){
              Get.toNamed(RouteName.loginView);
            }).onError((error,stackTrace){
              Utils.toastMessage(error.toString());
            });
          }, icon:const Icon(Icons.logout) )
        ],
      ),
      body: Obx((){

        switch(controller.RxrequestStatus.value){
          case Status.Loading:
            return const  Center(child: CircularProgressIndicator(),);

          case Status.Error:
            // TODO: Handle this case.
            return Text('Something went Wrong');

          case Status.Completed:
            return  ListView.builder(
                itemCount:controller.userList.value.data!.length ,
                itemBuilder: (context,index){
                 return Card(
                   child: ListTile(
                     leading:CircleAvatar(
                       backgroundImage: NetworkImage(controller.userList.value.data![index].avatar.toString()),
                     ) ,
                     title: Text(controller.userList.value.data![index].firstName.toString()),
                     subtitle: Text(controller.userList.value.data![index].email.toString()),
                   ),
                 );
            });


        }
        return SizedBox();
      }),
    );
  }
}
