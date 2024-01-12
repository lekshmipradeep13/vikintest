

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

import 'package:vikn_test/login/model/login_response_model.dart';
import 'package:vikn_test/login/view/home_screen.dart';

class LoginController extends ChangeNotifier{
  TextEditingController usernameCntrl =TextEditingController();
  TextEditingController passwordCntrl =TextEditingController();

 
  final Dio dio =Dio();
  LoginResponseModel? loginResponseModel;

login(String username,String password,BuildContext context)async{
  print(password);
  try{
  var response = await dio.post('https://api.accounts.vikncodes.com/api/v1/users/login'
  ,data: {"username":username , "password":password, "is_mobile": true},
  options: Options(headers: {})
  );
  print(response.statusCode);
  if(response.statusCode ==200){
loginResponseModel=LoginResponseModel.fromJson(response.data);
print(loginResponseModel!.data.access);
notifyListeners();
Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
 
  }else{
    print('error');
  }

  }catch(e){
    print(e.toString()) ;
  }
 
}
}