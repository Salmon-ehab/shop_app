
import 'package:dio/dio.dart';

class ApiServise{
  final Dio dio;
  ApiServise( this.dio);
  final  _baseurl ="http://makeup-api.herokuapp.com/api/v1/products.json?";

      Future<List<dynamic>> get({required String Parameters})async{
      final response = await dio.get("$_baseurl$Parameters");
          return response.data as List<dynamic>;
      }

}