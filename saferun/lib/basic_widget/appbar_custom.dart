import 'package:flutter/material.dart';

class AppbarCustom extends StatelessWidget {
  final Title txt;
  final IconData icon;
  final Color backcolor;
  // final int elev;
  const AppbarCustom({
    super.key,
    required this.txt,
    required this.icon,
    required this.backcolor,
    // this.elev = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: txt,
        leading: Icon(icon),
        actions: [Icon(icon)],
        backgroundColor: backcolor,
      ),
    );
  }
}
