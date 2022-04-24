import 'package:dio/dio.dart';
import 'package:movieapp/service/dio_service.dart';
import 'package:movieapp/utils/apis.utils.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization': 'Bearer $API.TMDB_TOKEN',
        },
      ),
    );
  }
}
