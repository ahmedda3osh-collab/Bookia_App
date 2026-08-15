

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
static late Dio dio;

static init (){

  dio=Dio(
    BaseOptions(
      baseUrl: "https://codingarabic.online/api/",
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20)
    )
  );
  
}
static void initLogger() {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      enabled: kDebugMode,
      filter: (options, args) {
        if (options.path.contains('/posts')) {
          return false;
        }
        return !args.isResponse || !args.hasUint8ListData;
      },
    ));
  }

}