import 'package:dio/dio.dart';

class ProjectItems {
  static const String projectName = 'BK10';
  ProjectItems._();
  // Bu kullanimda herhangi bir data üretemez sadece bu datayi kullanir. ProjectItems._();
}

// Instance kullanimi
// Singeletion class kullanimi
class ProjectNetworkManager {
  ProjectNetworkManager._() {
    _dio = Dio(BaseOptions(baseUrl: 'pub.dev'));

    _dio.options = BaseOptions();
  }

  late final Dio _dio;
  static ProjectNetworkManager instance = ProjectNetworkManager._();

  Dio get servicess => _dio;

  void addBaseHeaderToKen(String token) {
    _dio.options = _dio.options.copyWith(headers: {"Authorization": token});
  }
}

class DurationManager {
  DurationManager._();
  static DurationManager? _manager;

  static DurationManager get manager {
    if (_manager != null) return _manager!;
    _manager = DurationManager._();
    return _manager!;
  }
}
