import 'package:bookia_app/core/helper/app_constants.dart';
import 'package:bookia_app/core/networking/dio_factory.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepo {
 

  static Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await DioFactory.dio.post(
        "https://codingarabic.online/api/login",
        data: {
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        saveUserToken(response.data["data"]["token"]);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return false;
    }
  }
 static Future<void> saveUserToken(String token)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(AppConstants.userTokenKey, token);
  }
} 
