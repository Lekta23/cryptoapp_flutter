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
            titlePadding: const EdgeInsets.all(20),
            title: 'General',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: const Icon(Icons.language),
                
                onPressed: (BuildContext context) {
                  
                }
              ),
              SettingsTile.switchTile(
                title: 'Use System Theme',
                leading: const Icon(Icons.phone_android),
                switchValue: isSwitched,
                onToggle: (value) {},
              ),
            ],
          ),
          SettingsSection(
            titlePadding: const EdgeInsets.all(20),
            title: 'Authentication',
            tiles: [
              SettingsTile(
                title: 'Security',
                subtitle: 'Fingerprint',
                leading: const Icon(Icons.lock),
                onPressed: (BuildContext context) {
                  
                },
              ),
              SettingsTile.switchTile(
                title: 'Use fingerprint',
                leading: const Icon(Icons.fingerprint),
                switchValue: true,
                onToggle: (value) {},
              ),
            ],
          ),
        ],
      ),
  );
  
}