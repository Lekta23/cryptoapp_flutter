import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notreprojet/model/currency.dart';
import 'package:notreprojet/screens/home/localwidget/appbar.dart';
import 'package:notreprojet/screens/shared/choose_number.dart';
import 'package:path/path.dart';

import '../../globals.dart';

class Detail extends ConsumerWidget {
  const Detail({Key? key}) : super(key: key);

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
        height: 60,
      );
    } else {
      return SvgPicture.network(images, height: 60);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Currency args =
        ModalRoute.of(context)!.settings.arguments as Currency;
    var priceInt = double.parse(args.price);
    var priceString = priceInt.toStringAsFixed(2);

    return Scaffold(
        appBar:  MyAppBar( titre: Text(args.name.toUpperCase()), backgroundColor: Globals.secondaryColor),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Image.network(
                    "https://qph.fs.quoracdn.net/main-qimg-14aa45f4a944de6acb372fa0d4e61a7a-lq"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      afficheImage(args.logo_url),
                      const SizedBox(width: 16),
                      Text(args.name,
                          style: TextStyle(
                              color: Globals.text1,
                              fontSize: 24,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(width: 8),
                      Text('N° ' + args.rank.toString(),
                          style: TextStyle(
                              color: Globals.text1,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                Center(
                  child: Text(priceString + ' USD',
                      style: TextStyle(
                          color: Globals.text1,
                          fontSize: 24,
                          fontWeight: FontWeight.w700)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus, eros eu tempor dictum, erat libero pharetra risus, sed mattis odio velit non massa. Cras pellentesque neque non ante porta mattis. Vivamus id nunc id diam interdum auctor mollis a ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce eget leo non eros fermentum venenatis. Quisque ante quam, eleifend varius felis a, varius sodales dolor. Mauris feugiat fringilla quam, sit amet congue leo tempor ac. Sed suscipit, tortor eu gravida euismod, erat diam sollicitudin augue, sed molestie sapien urna in lorem. Donec sollicitudin sit amet libero eget consectetur. Fusce dapibus ante quis luctus vehicula. ',
                      style: TextStyle(color: Globals.text1, fontSize: 12)),
                ),
              ],
            ),
          ),
        ), backgroundColor: null,);
  }
}
