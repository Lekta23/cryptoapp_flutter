import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notreprojet/model/currency.dart';
import 'package:notreprojet/providers/dio.dart';

final testDioProvider = FutureProvider<List<Currency>?>((ref) async {
  final Dio dio = ref.read(dioProvider);
  try {
    final Response response = await dio.get(
        "/v1/currencies/ticker?key=589bcce3fe770609a6a9a3cd1992269c513bdf58&interval=1d,30d,365d&convert=EUR&per-page=50&page=1");
    List<dynamic> currency = response.data;
    List<Currency> tab = [];

    for (var json in response.data) {
      // print(json);
      Currency current = Currency.fromJson(json);
      tab.add(current);
    }
    return tab;
    // return tab;
  } catch (onError) {
    print(onError.toString());
  }
  ;
});
