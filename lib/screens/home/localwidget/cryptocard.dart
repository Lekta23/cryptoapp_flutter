import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notreprojet/globals.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notreprojet/model/currency.dart';
import 'package:notreprojet/providers/prefs.provider.dart';
import 'package:notreprojet/model/currency_data.dart';
import 'package:notreprojet/model/get_currencies.dart';
import 'package:notreprojet/screens/home/homepage.dart';
import 'package:notreprojet/providers/dio.dart';
import 'package:path/path.dart';
import 'package:image/image.dart' as img;

class CryptoCard extends ConsumerWidget {
  MaterialColor favOFF = Colors.grey;
  MaterialColor favON = Colors.yellow;
  MaterialColor _testColor = Colors.grey;
  final name;
  final image;
  final oneDay;
  final oneMonth;
  final oneYear;
  final price;
  final listFav;

  CryptoCard(
      {Key? key,
      required this.name,
      required this.image,
      required this.oneDay,
      required this.oneMonth,
      required this.oneYear,
      required this.price,
      required this.listFav})
      : super(key: key);

  final List<Widget> _painters = <Widget>[];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var priceInt = double.parse(price);
    var priceString = priceInt.toStringAsFixed(2);
    var flecheHaut = '↗️';
    var flecheBas = '↘️';
 

      String AfficheFleche(String index) {
      var  indexInt =  double.parse(index);
      if (indexInt > 0) {
        return flecheHaut;
      }else{
        return flecheBas;
      }
  }


  String extension(image){
    File file = new File(image);
  String base = basename(file.path);
  var laBase = base.split('.');
  return laBase[1];
  }

  affichageImage(image){
     var type =  extension(image);
        if (type == 'jpg' ||  type == 'png') {
          return Image.network(image);
        } else{
          return SvgPicture.network(image);
        }
  }

    

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
                    affichageImage(image),
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(name,
                          style: const TextStyle(
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
                          children:  [
                            Text('1d : '+ oneDay + AfficheFleche(oneDay),
                                style: const TextStyle(
                                  color: Globals.text1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                            const SizedBox(height: 4),
                            Text('1m : ' + oneMonth + AfficheFleche(oneMonth),
                                style: const TextStyle(
                                  color: Globals.text1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                            const SizedBox(height: 4),
                            Text('1 : ' + oneYear + AfficheFleche(oneYear),
                                style: const TextStyle(
                                  color: Globals.text1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Text(priceString + ' USD',
                        style: const TextStyle(
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
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          
                          final preferences =
                              await StreamingSharedPreferences.instance;
                          preferences.setString('favorites', name);
                          if (preferences != name &&
                              _testColor == favOFF) {
                            _testColor = favON;
                            listFav.add(name);
                            prefs.setStringList('listFav', listFav);
                            
                            
                          } else {
                            if (preferences != name &&
                                _testColor == favON) {
                              _testColor = favOFF;
                              
                              listFav.remove(name);
                              prefs.setStringList('listFav', listFav);
                            }
                          }
                          print(listFav);
                          ref.refresh(favoritesProvider);
                          prefs.getStringList('listFav');
                        },
                      );
                    },
                    error: (error) => const SizedBox(),
                    loading: (loading) => const SizedBox()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
}
