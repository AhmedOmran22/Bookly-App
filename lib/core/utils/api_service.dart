import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required endPoint}) async {
    var respone = await dio.get('$_baseUrl$endPoint');
    return respone.data;
  }
}
