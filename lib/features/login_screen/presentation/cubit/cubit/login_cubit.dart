import 'package:bookia_app/features/login_screen/data/repo/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    final response = await LoginRepo.login(email: email, password: password);
    if (response) {
      emit(LoginSuccess());
    } else {
      emit(LoginError());
    }
  }
}
