//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notreprojet/globals.dart';

class CryptoCard extends StatelessWidget {
  const CryptoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      height: 250,
      child: Card(
        color: Globals.secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('TITRE'),
            //CachedNetworkImage(imageUrl: "https://images-ext-1.discordapp.net/external/xUKrP1xK__qPK_XhV1pqYD2V7ynJcuEs3X0vwKOHGB8/https/upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1024px-Bitcoin.svg.png?width=678&height=678")
          ],
        ),
      ),
    );
  }
}
