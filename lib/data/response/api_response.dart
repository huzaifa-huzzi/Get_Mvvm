
import 'package:getx_mvvm/data/response/status.dart';

class ApiResponse<T>{

  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status,this.message,this.data);

  ApiResponse.loading() : status = Status.Loading ;
  ApiResponse.completed(this.data) :  status = Status.Completed ;
  ApiResponse.error(this.message) :  status =Status.Error ;

  @override
  String toString(){
    return "Status: $status \n Message :$message \n Data : $data";
  }


}