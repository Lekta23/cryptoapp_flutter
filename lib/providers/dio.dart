import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Dio dio = Dio(BaseOptions(
    baseUrl: 'https://api.nomics.com',
    receiveTimeout: 5000,
    connectTimeout: 1000,
    sendTimeout: 5000));

final dioProvider = Provider<Dio>((ref) {
  return dio;
});
