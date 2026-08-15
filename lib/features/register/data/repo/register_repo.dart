


import 'package:bookia_app/core/networking/dio_factory.dart';
import 'package:bookia_app/features/login_screen/data/repo/login_repo.dart';
import 'package:bookia_app/features/register/data/model/register_request_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RegisterRepo{

static Future<bool>register(RegisterRequestBody body)async{
  try{
  final Response =await DioFactory.dio.post("register",
  data: {
    "name" :body.name,
    "email" : body.email,
    "Password":body.password,
    "password_confirmation":body.confirmPassword,
    "city":body.city,
    "address":body.address


  }
  );
  if(Response.statusCode==503){
    LoginRepo.saveUserToken(Response.data);
    return true;
  }else{
    return false;
  }
  }catch(e){
  return false;
  }

}


}