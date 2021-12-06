import 'package:flutter/material.dart';
import 'package:notreprojet/globals.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';


class CryptoWallet extends StatelessWidget {
  const CryptoWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width90 = MediaQuery.of(context).size.width * 0.90;

    return Center(
      child: SizedBox(
        width: width90,
        height: 100,
        child: Card(
          color: Globals.secondaryColor,
          child: ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: Row(
                children: [
                  Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1024px-Bitcoin.svg.png",
                      height: 64),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Text('Bitcoin USA',
                        style: TextStyle(
                          color: Globals.text1,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  const Text('x1200',
                      style: TextStyle(
                        color: Globals.text1,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 200,
                          color: Globals.secondaryColor,
                          child: ListView(
                            children: <Widget>[
                              const Card(
                                child: ListTile(
                                  leading: Icon(Icons.sell),
                                  title: Text('Vendre !'),
                                  trailing: Icon(Icons.keyboard_arrow_right),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: const Icon(Icons.compare_arrows_rounded),
                                  title: const Text('Convertir !'),
                                  trailing: const Icon(Icons.keyboard_arrow_right),
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 200,
                                          color: Globals.secondaryColor,
                                          child: ListView(
                                            children: const <Widget>[
                                              Card(
                                                child: ListTile(
                                                  leading: Icon(CryptoFontIcons.ETH),
                                                  title: Text('EN ETHERUM !'),
                                                  trailing: Icon(Icons.keyboard_arrow_right),
                                                ),
                                              ),
                                              Card(
                                                child: ListTile(
                                                  leading: Icon(CryptoFontIcons.XRP),
                                                  title: Text('EN XRP !'),
                                                  trailing: Icon(Icons.keyboard_arrow_right),
                                                ),
                                              ),
                                            ],
                                          )
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          )
                        );
                      },
                    );
                }
           
          ),
        ),
      ),
    );
  }
}
