import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notreprojet/screens/home/localwidget/cryptocard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Favoris extends StatelessWidget {
    List<String> list = [];
  Future<List<String>> _loadSharedPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    list = prefs.getStringList('listFav')!;
    print(list);
    return list;
  }
   Favoris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<List<String>>(
      future: _loadSharedPref(),
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        return Container(
        );

      },
    ),

    );
  }

}