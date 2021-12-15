import 'dart:io';
import 'package:notreprojet/model/currency.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notreprojet/globals.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notreprojet/providers/prefs.provider.dart';
import 'package:path/path.dart';

import '../../detail/detail.dart';

class CryptoCard extends ConsumerWidget {
  MaterialColor favOFF = Colors.grey;
  MaterialColor favON = Colors.yellow;
  MaterialColor _testColor = Colors.grey;
  final Currency data;

  CryptoCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<Widget> _painters = <Widget>[];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var priceInt = double.parse(data.price);
    var priceString = priceInt.toStringAsFixed(2);
    var flecheHaut = '↗️';
    var flecheBas = '↘️';
    var name = data.name;
    List<String> listFav = [];

    String AfficheFleche(String index) {
      var indexInt = double.parse(index);
      if (indexInt > 0) {
        return flecheHaut;
      } else {
        return flecheBas;
      }
    }

    String extension(image) {
      File file = new File(image);
      String base = basename(file.path);
      var laBase = base.split('.');
      return laBase[1];
    }

    afficheImage(images) {
      var type = extension(images);
      if (type == 'jpg' || type == 'png' || type == 'jpeg') {
        return Image.network(
          images,
          height: 34,
        );
      } else {
        return SvgPicture.network(images, height: 35);
      }
    }

    return GestureDetector(
      onTap: () {
        _onTap(data, context);
      },
      child: Padding(
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
                      afficheImage(data.logo_url),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(data.name,
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
                            children: [
                              Text(
                                  '1d : ' +
                                      data.oneDay!.price_change_pct.toString() +
                                      AfficheFleche(
                                          data.oneDay!.price_change_pct.toString()),
                                  style: const TextStyle(
                                    color: Globals.text1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                              const SizedBox(height: 4),
                              Text(
                                  '1m : ' +
                                      data.oneMonth!.price_change_pct.toString() +
                                      AfficheFleche(
                                          data.oneMonth!.price_change_pct.toString()),
                                  style: const TextStyle(
                                    color: Globals.text1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                              const SizedBox(height: 4),
                              Text(
                                  '1y : ' +
                                      data.oneYear!.price_change_pct.toString() +
                                      AfficheFleche(
                                          data.oneYear!.price_change_pct.toString()),
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
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();

                            final preferences =
                                await StreamingSharedPreferences.instance;
                            preferences.setString('favorites', name);
                            if (preferences != name && _testColor == favOFF) {
                              _testColor = favON;
                              listFav.add(name);
                              prefs.setStringList('listFav', listFav);
                            } else {
                              if (preferences != name && _testColor == favON) {
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
      ),
    );
  }

  void _onTap(Currency currency, context) {
    Navigator.pushNamed(
      context,
      '/details',
      arguments: currency,
    );
  }
}
