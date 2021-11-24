import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:settings_ui/settings_ui.dart';

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
    body: SettingsList(
        sections: [
          SettingsSection(
            titlePadding: EdgeInsets.all(20),
            title: 'General',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language),
                
                onPressed: (BuildContext context) {
                  
                }
              ),
              SettingsTile.switchTile(
                title: 'Use System Theme',
                leading: Icon(Icons.phone_android),
                switchValue: isSwitched,
                onToggle: (value) {},
              ),
            ],
          ),
          SettingsSection(
            titlePadding: EdgeInsets.all(20),
            title: 'Authentication',
            tiles: [
              SettingsTile(
                title: 'Security',
                subtitle: 'Fingerprint',
                leading: Icon(Icons.lock),
                onPressed: (BuildContext context) {
                  
                },
              ),
              SettingsTile.switchTile(
                title: 'Use fingerprint',
                leading: Icon(Icons.fingerprint),
                switchValue: true,
                onToggle: (value) {},
              ),
            ],
          ),
        ],
      ),
  );
  
}