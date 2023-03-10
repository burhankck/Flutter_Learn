import 'package:dio/dio.dart';

class ProjectDioMixin {
  final DioService = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));
}
