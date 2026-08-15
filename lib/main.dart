

import 'package:bookia_app/bookia_app.dart';
import 'package:bookia_app/core/helper/app_constants.dart';
import 'package:bookia_app/core/networking/dio_factory.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, 
    statusBarIconBrightness: Brightness.dark, 
  ));
  
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  
  await EasyLocalization.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? token= prefs.getString(AppConstants.userTokenKey);
  
  await Future.delayed(const Duration(seconds: 3));
  
  FlutterNativeSplash.remove();

  DioFactory.init();
  runApp(EasyLocalization(
    supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations', 
      fallbackLocale: Locale('en'),
      startLocale: Locale('en'),
    child: BookiaApp(
      token:token,
    )));
}