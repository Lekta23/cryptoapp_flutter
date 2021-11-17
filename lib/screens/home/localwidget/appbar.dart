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
);
}

  @override
  Size get preferredSize => Size.fromHeight(40);}
