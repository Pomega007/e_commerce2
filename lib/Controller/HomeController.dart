import 'package:dio/dio.dart';
import 'package:e_commerce/Controller//ProductModel.dart';

class HomeController{
  Dio _dio = Dio();
  String url = 'https://fakestoreapi.com/products';

  List<ProductModel> productList = [];

  Future<List<ProductModel>> getProduct() async{
    Response response = await _dio.get(url);
    response.data.forEach(
            (e) => productList.add(ProductModel.fromJson(e))
    );
    print('@@@@@@ ${productList.length}');
    return productList;
  }
}