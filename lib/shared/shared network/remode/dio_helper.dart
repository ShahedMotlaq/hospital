import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://192.168.43.74:3000/api/',
        receiveDataWhenStatusError: true,
        validateStatus: (status) {
          return status! == 200 || status == 400;
        },
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      // 'lang': lang,
      'Authorization': "Bearer $token",
    };
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      // 'lang': lang,
      'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAsInVzZXJJRCI6MTMsInR5cGUiOiJvYmplY3QiLCJzcGVjaWFsaXN0IjoiZ2VuZXJhbCIsImlhdCI6MTcyMjU0NDI5NH0._4f3jgsI130f5Mm--xEFNwLwb8NtriqOpOGno-W9UJQ",
    };
    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      // 'lang': lang,
      'Authorization': "Bearer $token",
    };
    return dio!.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
