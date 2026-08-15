import 'package:bookia_app/features/register/data/model/register_request_body.dart';
import 'package:bookia_app/features/register/data/repo/register_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  register(RegisterRequestBody body)async{
    emit(RegisterLoading());
    final response =await RegisterRepo.register(body);
    if(response){
      emit(RegisterSuccess());
    }else{
      emit(RegisterError());
    }
  }
}
