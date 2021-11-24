import 'package:notreprojet/screens/profile/profile_page.dart';
import 'package:notreprojet/screens/settings/settings_page.dart';

import '../../../globals.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final Text titre;

  const MyAppBar({Key? key, required this.titre,   required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titre,
      backgroundColor: backgroundColor,
      actions: [
        PopupMenuButton<int>(
          onSelected: (item) => onSelected(context,item),
          itemBuilder: (context) => [
             PopupMenuItem<int>(
              value: 0,
              child: Row(
                children: const [
                  Icon(Icons.settings, color: Colors.black),
                  SizedBox(width: 8),
                  Text("Settings"),
              ],
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
              child: Row(
                children: const [
                  Icon(Icons.account_circle, color: Colors.black),
                  SizedBox(width: 8),
                  Text("Profile"),
                ],
              ),
            ),
          ],
        ),
      ],
      
    );
    
  }

void onSelected(BuildContext context, int item){
    switch(item){
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SettingsPage())
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ProfilePage())
        );
        break;
      
    }  
}

  @override
  Size get preferredSize => const Size.fromHeight(40);}
