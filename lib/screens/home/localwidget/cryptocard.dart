import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notreprojet/globals.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notreprojet/model/currency.dart';
import 'package:notreprojet/model/currency_data.dart';
import 'package:notreprojet/model/get_currencies.dart';
import 'package:notreprojet/providers/dio.dart';

class CryptoCard extends ConsumerWidget {
   final   name;
   final   image;
   final oneDay;
   final oneMonth;
   final oneYear;
  final price;
   

   CryptoCard({Key? key,  required this.name, required this.image,required this.oneDay , required this.oneMonth, required this.oneYear, required this.price}) : super(key: key);

  final List<Widget> _painters = <Widget>[];
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var priceInt = double.parse(price);
    var priceString = priceInt.toStringAsFixed(2);
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
                    Image.network(image, height: 50),
                     Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          name,
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
                          children:  [
                            Text('1d : '+ oneDay + '↗️',
                                style: TextStyle(
                                  color: Globals.text1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(height: 4),
                            Text('1m :' + oneMonth + '↘️',
                                style: TextStyle(
                                  color: Globals.text1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(height: 4),
                            Text('1d :' + oneYear + '↗️',
                                style: TextStyle(
                                  color: Globals.text1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ),
                    ),
                     Text(priceString + ' USD',
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
                child: IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.green,),
                  tooltip: 'Add to favourite',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
