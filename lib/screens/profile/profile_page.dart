import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:html' as html;
import '../../globals.dart';

const urladrien = 'https://flutter.io';
const urlclement = 'https://flutter.io';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("Profile".toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
              color: Globals.secondaryColor,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                          alignment: const Alignment(0.0, 2.5),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/profileimage/cafe.jpg'),
                            radius: 60.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "Adrien",
                            style: TextStyle(
                                color: Globals.text1,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Poulain".toUpperCase(),
                            style: const TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Globals.buttonColor)
                            ),
                            
                            onPressed: (){
                              const url = 'https://flutter.io';
                              html.window.open(url, "name");
                            },
                            child: Container(
                              constraints: const BoxConstraints(
                                maxWidth: 100.0,
                                maxHeight: 40.0,
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Portfolio",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Globals.secondaryColor,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                          alignment: const Alignment(0.0, 2.5),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/profileimage/cafe.jpg'),
                            radius: 60.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "Clément",
                            style: TextStyle(
                                color: Globals.text1,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Lefief".toUpperCase(),
                            style: const TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Globals.buttonColor)
                            ),
                            onPressed: (){
                              const url = 'https://flutter.io';
                              html.window.open(url, "name");
                            },
                            child: Container(
                              constraints: const BoxConstraints(
                                maxWidth: 100.0,
                                maxHeight: 40.0,
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Portfolio",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Globals.secondaryColor,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                          alignment: const Alignment(0.0, 2.5),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/profileimage/cafe.jpg'),
                            radius: 60.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "Mathieu",
                            style: TextStyle(
                                color: Globals.text1,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Boidin".toUpperCase(),
                            style: const TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Globals.buttonColor)
                            ),
                            onPressed: () {
                              const url = 'https://flutter.io';
                              html.window.open(url, "name");
                            },
                            child: Container(
                              constraints: const BoxConstraints(
                                maxWidth: 100.0,
                                maxHeight: 40.0,
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Portfolio",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            )
          ],
        ),
      ));
}
