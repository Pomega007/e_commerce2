import 'package:dio/dio.dart';
import 'package:e_commerce/Controller/Dio/EndPoint.dart';
import '../ProductModel.dart';

class DioHelper
{
  //178.128.138.57/api/auth/login?password=Ahmedyasser16&email=ahmeddd26@gmail.com
  // https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=935fd7ff5d5d47b9b01be1f7c0b9ba00
  static  Dio dio =Dio();
  static  init(){
    dio =Dio(
      BaseOptions(
        baseUrl: baseUrlFood,
        headers: {
          "Content-Type":"application/json",
          "Accept":"application/json",
        },
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String,dynamic>? query,
    String? token,
  })async{
    try{
      dio.options.headers ={
        "Authorization": "Bearer ${token ?? ""}"
      };
      // int x=6;
      Response response= await dio.get(url,
          queryParameters: query
      );
      return response;
    }
    catch(e){
      print(e);
      rethrow;
    }

  }


  static Future<Response> postData({
    required String url,
    required Map<String,dynamic> data,
    Map<String,dynamic>? query,
    String? token,
  })async{
    try{
      dio.options.headers ={
        "Authorization": "Bearer ${token ?? ""}"
      };
      // int x=6;
      Response response= await dio.post(url,
          queryParameters: query,
          data: data
      );
      return response;
    }
    catch(e){
      print(e);
      rethrow;
    }

  }
}