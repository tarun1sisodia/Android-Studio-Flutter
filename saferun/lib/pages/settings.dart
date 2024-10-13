import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      drawer: Drawer(
        backgroundColor: Colors.orange.shade100,
        child: Column(
          children: [
            DrawerHeader(child: Container()),
            ListTile(
                leading: Icon(CupertinoIcons.home),
                title: Text("Home"),
                onTap: () {
                  //Pop Navigtor First
                  Navigator.pop(context);
                  Navigator.pushNamed(
                      context,
                      '/home'
                      'page');
                }),
            ListTile(
                leading: Icon(CupertinoIcons.antenna_radiowaves_left_right),
                title: Text("Network Analyzer"),
                onTap: () {
                  Navigator.pushNamed(context, '/network');
                }),
            ListTile(
              leading: Icon(CupertinoIcons.videocam_circle_fill),
              title: Text("Video Chat"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.deepOrange.shade400,
      ),
    );
  }
}
