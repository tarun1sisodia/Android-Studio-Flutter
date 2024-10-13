import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedBetter extends StatelessWidget {
  const ExpandedBetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(CupertinoIcons.flag),
          title: Text("Expanded Widget"),
          backgroundColor: Colors.amber),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Takes Automatically Width and height for containers.
          Expanded(child: Container(color: Colors.deepPurpleAccent.shade100)),
          Expanded(child: Container(color: Colors.deepPurpleAccent.shade200)),
          Expanded(child: Container(color: Colors.deepPurpleAccent.shade700)),
          //It is 3 times bigger than other because it is using flex property.
          Expanded(
              flex: 3, child: Container(color: Colors.deepPurple.shade400)),
        ],
      ),
    );
  }
}
