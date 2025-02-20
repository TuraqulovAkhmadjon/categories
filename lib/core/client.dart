import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "http://192.168.9.204:8888/api/v1"),
  );

  Future<List<dynamic>> fetchCategories() async {
    var response = await dio.get('/categories/list');
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    } else {
      throw Exception("Failed to load my profile data");
    }
  }
}
