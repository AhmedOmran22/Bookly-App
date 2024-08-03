import 'package:dio/dio.dart';


class ApiService {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required endPoint}) async {
    var respone = await _dio.get('$_baseUrl$endPoint');
    return respone.data;
  }
}


// class ApiService {
//   final String _baseUrl = 'https://www.googleapis.com/books/v1/';
//   final Dio _dio = Dio();
//   Future<Map<String, dynamic>> get({required endPoint}) async {
//     var respone = await _dio.get('$_baseUrl$endPoint');
//     return respone.data;
//   }
// }
