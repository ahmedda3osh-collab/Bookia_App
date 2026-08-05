import 'package:bookia_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  ThemeData appTheme = AppTheme.lightTheme;


  void changeTheme() {
    if (appTheme == AppTheme.lightTheme) {
      appTheme = AppTheme.darkTheme;
    } else {
      appTheme = AppTheme.lightTheme;
    }
    emit(ChangeState(theme: appTheme));
  }
}
