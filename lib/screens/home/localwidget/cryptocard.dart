import 'dart:io';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notreprojet/globals.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notreprojet/providers/prefs.provider.dart';
import 'package:path/path.dart';

class CryptoCard extends ConsumerWidget {
  CryptoCard(
      {Key? key,
      required this.name,
      required this.image,
      required this.oneDay,
      required this.oneMonth,
      required this.oneYear,
      required this.price})
      : super(key: key);

  MaterialColor favOFF = Colors.grey;
  MaterialColor favON = Colors.yellow;

  final name;
  final image;
  final oneDay;
  final oneMonth;
  final oneYear;
  final price;

  final List<Widget> _painters = <Widget>[];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var priceInt = double.parse(price);
    var priceString = priceInt.toStringAsFixed(2);
    var flecheHaut = '↗️';
    var flecheBas = '↘️';

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
                    afficheImage(image),
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
                          children: [
                            Text('1d : ' + oneDay + AfficheFleche(oneDay),
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
                            Text('1y : ' + oneYear + AfficheFleche(oneYear),
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
                          color: data.value.contains(name)
                              ? favON
                              : favOFF,
                        ),
                        tooltip: 'Add to favourite',
                        onPressed: () async {
                          final preferences =
                              await StreamingSharedPreferences.instance;
                          Preference<List<String>> preflist = preferences
                              .getStringList('listFav', defaultValue: []);
                          final List<String> list = preflist.getValue();
                          if (list.indexOf(name) < 0) {
                            list.add(name);
                          } else {
                            list.remove(name);
                          }
                          preferences.setStringList('listFav', list);
                          ref.refresh(favoritesProvider);
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
