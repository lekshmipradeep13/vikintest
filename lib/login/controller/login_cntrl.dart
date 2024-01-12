

import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

import 'package:vikn_test/login/model/login_response_model.dart';
import 'package:vikn_test/login/view/home_screen.dart';
import 'package:vikn_test/widget/error%20_snackbar_widget.dart';

class LoginController extends ChangeNotifier{
  TextEditingController usernameCntrl =TextEditingController();
  TextEditingController passwordCntrl =TextEditingController();

 bool isLoading =false;
  final Dio dio =Dio();
  LoginResponseModel? loginResponseModel;

login(String username,String password,BuildContext context)async{
  print(password);
  try{

    isLoading=true;
    if(username != 'Rabeeh@vk'){
                        CustomErrorSnackBar.showError(context, 'username is invalid');
isLoading=false;
notifyListeners();
                        return;
                      }
                      if(password!= 'Rabeeh@000'){
                        CustomErrorSnackBar.showError(context, 'password is invalid');
isLoading=false;
notifyListeners();
                        return;
                      }
    notifyListeners();
  var response = await dio.post('https://api.accounts.vikncodes.com/api/v1/users/login'
  ,data: {"username":username , "password":password, "is_mobile": true},
  options: Options(headers: {})

  );
    isLoading=false;
    notifyListeners();
  log('responce : ${response.statusCode}');
  if(response.statusCode ==200){
loginResponseModel=LoginResponseModel.fromJson(response.data);
print(loginResponseModel!.data.access);
notifyListeners();
Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
 
  }else{
    print('error');
  }

  }catch(e){
    isLoading=false;
    notifyListeners();
    print(e.toString()) ;
  }
 
}
}