import 'dart:convert';
import 'dart:developer';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notreprojet/globals.dart';
import 'package:notreprojet/model/currency.dart';
import 'package:notreprojet/providers/prefs.provider.dart';
import 'package:notreprojet/model/get_currencies.dart';
import 'package:notreprojet/providers/dio.dart';

class CryptoCard extends ConsumerWidget {
Color favOFF = Colors.grey;
Color favON = Colors.yellow ;
Color _testColor = Colors.grey;
   CryptoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Dio dio = ref.read(dioProvider);
    final Future<Response> future = dio.get(
        "/v1/currencies/ticker?key=589bcce3fe770609a6a9a3cd1992269c513bdf58&interval=1d&convert=EUR&per-page=1&page=1");
    future.then((Response value) {
      GetCurrencies current = GetCurrencies.fromJson(value.data);
      print(value.toString());
      print(value.statusCode);
    }).catchError((onError) {
      print(onError.toString());
    });
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 190,
        height: 260,
        child: Card(
          color: Globals.secondaryColor,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1024px-Bitcoin.svg.png",
                        height: 64),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Bitcoin',
                          style: TextStyle(
                            color: Globals.text1,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Text('1d : +1.8 ↗️',
                                style: TextStyle(
                                  color: Globals.text1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(height: 4),
                            Text('1m : -1.9 ↘️',
                                style: TextStyle(
                                  color: Globals.text1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(height: 4),
                            Text('1d : +1.9 ↗️',
                                style: TextStyle(
                                  color: Globals.text1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ),
                    ),
                    const Text('56 841,80 USD',
                        style: TextStyle(
                          color: Globals.text1,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: ref.watch(favoritesProvider).map(
                    data: (data) {
                      return IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: _testColor,
                        ),
                        tooltip: 'Add to favourite',
                        onPressed: () async {
                          String cryptoName = 'AAAA';
                          final preferences =
                              await StreamingSharedPreferences.instance;
                              preferences.setString('favorites', cryptoName);
                              if(preferences != cryptoName && _testColor == favOFF ){
                                _testColor = favON;
                              } else {
                                if(preferences != cryptoName && _testColor== favON){
                                  _testColor = favOFF;
                                }
                              }
                                
                              ref.refresh(favoritesProvider);
                        },
                      );
                    },
                    error: (error) => SizedBox(),
                    loading: (loading) => SizedBox()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
