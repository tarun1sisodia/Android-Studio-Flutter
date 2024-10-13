import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  //A Stateless widget does not change its state once load to ui.
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar is Designed for better Ui experience
      appBar: AppBar(
        leading: const Icon(CupertinoIcons.person),
        title: const Text("Coding Hero"),
        actions: const [
          Icon(CupertinoIcons.moon_stars_fill),
          // Icon(CupertinoIcons.chevron_left_slash_chevron_right)
        ],
        elevation: 0,
        backgroundColor: Colors.orange.shade200,
      ),
      //Column and inside expanded version of container.
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.pinkAccent)),
          Expanded(child: Container(color: Colors.deepPurpleAccent)),
          Expanded(child: Container(color: Colors.purple)),
        ],
      ),
    );
  }
}
