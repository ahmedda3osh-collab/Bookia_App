

import 'package:bookia_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme{
  static  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.backgroundColorLight,
    appBarTheme:  AppBarThemeData(
      backgroundColor: AppColor.backgroundColorLight,
    ),
    fontFamily: "DM",
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      titleLarge: TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
       fillColor: Colors.white,
        filled: true,
      border: OutlineInputBorder(
       
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColor.borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColor.mainColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColor.borderColor)
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.backgroundColorDark,
    appBarTheme:  AppBarThemeData(
      backgroundColor: AppColor.backgroundColorDark,
    ),
    fontFamily: "DM",
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      
    ),
    inputDecorationTheme: InputDecorationTheme(
       fillColor: Colors.black.withValues(alpha: 0.7),
        filled: true,
      border: OutlineInputBorder(
       
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColor.borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColor.mainColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColor.borderColor)
      ),
    ),
    );
  
}