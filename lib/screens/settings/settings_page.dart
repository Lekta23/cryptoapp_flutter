import 'package:flutter/material.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';

import '../../globals.dart';

class SettingsPage extends StatelessWidget {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Settings".toUpperCase()),
          centerTitle: true,
          backgroundColor: Globals.secondaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              height: 200,
                              color: Globals.secondaryColor,
                              child: ListView(
                                children: <Widget>[
                                  Card(
                                    child: ListTile(
                                      leading: Container(
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: AssetImage(
                                                  'languageimg/francais.jpg',
                                                ))),
                                      ),
                                      title: const Text('Français'),
                                      trailing: const Icon(
                                          Icons.keyboard_arrow_right),
                                    ),
                                  ),
                                  Card(
                                    child: ListTile(
                                      leading: Container(
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: AssetImage(
                                                  'languageimg/anglais.jpg',
                                                ))),
                                      ),
                                      title: const Text('Anglais'),
                                      trailing: const Icon(
                                          Icons.keyboard_arrow_right),
                                    ),
                                  ),
                                  Card(
                                    child: ListTile(
                                      leading: Container(
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: AssetImage(
                                                  'languageimg/allemand.png',
                                                ))),
                                      ),
                                      title: const Text('Allemand'),
                                      trailing: const Icon(
                                          Icons.keyboard_arrow_right),
                                    ),
                                  ),
                                  Card(
                                    child: ListTile(
                                      leading: Container(
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: AssetImage(
                                                  'languageimg/espagnol.jpg',
                                                ))),
                                      ),
                                      title: const Text('Espagnol'),
                                      trailing: const Icon(
                                          Icons.keyboard_arrow_right),
                                    ),
                                  ),
                                ],
                              ));
                        },
                      );
                    },
                    icons: Icons.language,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Globals.secondaryColor,
                    ),
                    title: 'Langages',
                    subtitle: "Changer la langue de l'application",
                  ),
                ],
              ),
            ],
          ),
        ),
        // body: SettingsList(
        //     backgroundColor: Globals.primaryColor,
        //     sections: [
        //       SettingsSection(
        //         titlePadding: const EdgeInsets.all(20),
        //         title: 'Général',
        //         tiles: [
        //           SettingsTile(

        //             title: 'Langage',
        //             subtitle: 'Français',
        //             leading: const Icon(Icons.language),

        //             onPressed: (BuildContext context) {
        //                 showModalBottomSheet<void>(
        //                   context: context,
        //                   builder: (BuildContext context) {
        //                     return Container(
        //                       height: 200,
        //                       color: Globals.secondaryColor,
        //                       child: ListView(
        //                         children: <Widget>[
        //                           Card(
        //                             child: ListTile(
        //                               leading: Container(
        //                                 width: 35,
        //                                 decoration: const BoxDecoration(
        //                                 image: DecorationImage(
        //                                   fit: BoxFit.fitWidth,
        //                                   image: AssetImage('languageimg/francais.jpg',)
        //                                 )
        //                               ),

        //                               ),

        //                               title: const Text('Français'),
        //                               trailing: const Icon(Icons.keyboard_arrow_right),
        //                             ),
        //                           ),
        //                           Card(
        //                             child: ListTile(
        //                               leading: Container(
        //                                 width: 35,
        //                                 decoration: const BoxDecoration(
        //                                 image: DecorationImage(
        //                                   fit: BoxFit.fitWidth,
        //                                   image: AssetImage('languageimg/anglais.jpg',)
        //                                 )
        //                               ),

        //                               ),
        //                               title: const Text('Anglais'),
        //                               trailing: const Icon(Icons.keyboard_arrow_right),
        //                             ),
        //                           ),
        //                           Card(
        //                             child: ListTile(
        //                               leading: Container(
        //                                 width: 35,
        //                                 decoration: const BoxDecoration(
        //                                 image: DecorationImage(
        //                                   fit: BoxFit.fitWidth,
        //                                   image: AssetImage('languageimg/allemand.png',)
        //                                 )
        //                               ),

        //                               ),
        //                               title: const Text('Allemand'),
        //                               trailing: const Icon(Icons.keyboard_arrow_right),
        //                             ),
        //                           ),
        //                           Card(
        //                             child: ListTile(
        //                               leading: Container(
        //                                 width: 35,
        //                                 decoration: const BoxDecoration(
        //                                 image: DecorationImage(
        //                                   fit: BoxFit.fitWidth,
        //                                   image: AssetImage('languageimg/espagnol.jpg',)
        //                                 )
        //                               ),

        //                               ),
        //                               title: const Text('Espagnol'),
        //                               trailing: const Icon(Icons.keyboard_arrow_right),
        //                             ),
        //                           ),
        //                         ],
        //                       )
        //                     );
        //                   },
        //                 );
        //             }
        //           ),
        //           SettingsTile.switchTile(
        //             title: 'Utiliser le thème du sytème',
        //             leading: const Icon(Icons.phone_android),
        //             switchValue: isSwitched,
        //             onToggle: (value) {},
        //           ),
        //         ],
        //       ),
        //       SettingsSection(
        //         titlePadding: const EdgeInsets.all(20),
        //         title: 'Authentification',
        //         tiles: [
        //           SettingsTile(
        //             title: 'Security',
        //             subtitle: 'Fingerprint',
        //             leading: const Icon(Icons.lock),
        //             onPressed: (BuildContext context) {

        //             },
        //           ),
        //           SettingsTile.switchTile(
        //             title: 'Use fingerprint',
        //             leading: const Icon(Icons.fingerprint),
        //             switchValue: true,
        //             onToggle: (value) {},
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
      );
}
