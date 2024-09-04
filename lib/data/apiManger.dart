import 'package:dio/dio.dart';
import 'package:ecommerance/core/resources/constantsManger.dart';

class Apimanger {
  late Dio dio;
  Apimanger() {
    dio = Dio();
  }
  Future<Response> getData(String endPoint,
      {Map<String, dynamic>? queryParamters}) {
    //curly brackets => optional named paramters
    return dio.get(AppConstans.baseUrl + endPoint,
        queryParameters: queryParamters);
  }

  Future<Response> postData(String endPoint,
      {Map<String, dynamic>? queryParamters, Map<String, dynamic>? body}) {
    //curly brackets => optional named paramters
    return dio.post(AppConstans.baseUrl + endPoint,
        data: body, queryParameters: queryParamters);
  }
}
